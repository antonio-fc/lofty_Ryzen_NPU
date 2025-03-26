module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<32xbf16>
    memref.global "public" @out : memref<32xbf16>
    memref.global "public" @of_sub2mean : memref<4608xbf16>
    memref.global "public" @of_imag2sub_cons : memref<4608xbf16>
    memref.global "public" @of_imag2sub : memref<4608xbf16>
    memref.global "public" @of_real2sub_cons : memref<4608xbf16>
    memref.global "public" @of_real2sub : memref<4608xbf16>
    memref.global "public" @of_join_imag1_cons : memref<2304xbf16>
    memref.global "public" @of_join_imag1 : memref<2304xbf16>
    memref.global "public" @of_join_imag0_cons : memref<2304xbf16>
    memref.global "public" @of_join_imag0 : memref<2304xbf16>
    memref.global "public" @of_join_real1_cons : memref<2304xbf16>
    memref.global "public" @of_join_real1 : memref<2304xbf16>
    memref.global "public" @of_join_real0_cons : memref<2304xbf16>
    memref.global "public" @of_join_real0 : memref<2304xbf16>
    memref.global "public" @of_add2main1_0_cons : memref<4608xbf16>
    memref.global "public" @of_add2main1_1_cons : memref<4608xbf16>
    memref.global "public" @of_add2main1 : memref<4608xbf16>
    memref.global "public" @of_add2main0_0_cons : memref<4608xbf16>
    memref.global "public" @of_add2main0_1_cons : memref<4608xbf16>
    memref.global "public" @of_add2main0 : memref<4608xbf16>
    memref.global "public" @of_add_uv1 : memref<4608xbf16>
    memref.global "public" @of_add_uv0 : memref<4608xbf16>
    memref.global "public" @of_add_w1_cons : memref<4608xbf16>
    memref.global "public" @of_add_w1 : memref<4608xbf16>
    memref.global "public" @of_add_w0_cons : memref<4608xbf16>
    memref.global "public" @of_add_w0 : memref<4608xbf16>
    memref.global "public" @of_add_v1_cons : memref<4608xbf16>
    memref.global "public" @of_add_v1 : memref<4608xbf16>
    memref.global "public" @of_add_v0_cons : memref<4608xbf16>
    memref.global "public" @of_add_v0 : memref<4608xbf16>
    memref.global "public" @of_add_u1 : memref<4608xbf16>
    memref.global "public" @of_add_u0 : memref<4608xbf16>
    memref.global "public" @of_in_main14_cons : memref<4610xbf16>
    memref.global "public" @of_in_main14 : memref<4610xbf16>
    memref.global "public" @of_in_main13_cons : memref<4610xbf16>
    memref.global "public" @of_in_main13 : memref<4610xbf16>
    memref.global "public" @of_in_main12_cons : memref<4610xbf16>
    memref.global "public" @of_in_main12 : memref<4610xbf16>
    memref.global "public" @of_in_main11_cons : memref<4610xbf16>
    memref.global "public" @of_in_main11 : memref<4610xbf16>
    memref.global "public" @of_in_main10_cons : memref<4610xbf16>
    memref.global "public" @of_in_main10 : memref<4610xbf16>
    memref.global "public" @of_in_main04_cons : memref<4610xbf16>
    memref.global "public" @of_in_main04 : memref<4610xbf16>
    memref.global "public" @of_in_main03_cons : memref<4610xbf16>
    memref.global "public" @of_in_main03 : memref<4610xbf16>
    memref.global "public" @of_in_main02_cons : memref<4610xbf16>
    memref.global "public" @of_in_main02 : memref<4610xbf16>
    memref.global "public" @of_in_main01_cons : memref<4610xbf16>
    memref.global "public" @of_in_main01 : memref<4610xbf16>
    memref.global "public" @of_in_main00_cons : memref<4610xbf16>
    memref.global "public" @of_in_main00 : memref<4610xbf16>
    memref.global "public" @in2_cons : memref<23050xbf16>
    memref.global "public" @in2 : memref<23050xbf16>
    memref.global "public" @in1_cons : memref<23050xbf16>
    memref.global "public" @in1 : memref<23050xbf16>
    memref.global "public" @in0_0_cons : memref<96xbf16>
    memref.global "public" @in0_1_cons : memref<96xbf16>
    memref.global "public" @in0_2_cons : memref<96xbf16>
    memref.global "public" @in0_3_cons : memref<96xbf16>
    memref.global "public" @in0_4_cons : memref<96xbf16>
    memref.global "public" @in0_5_cons : memref<96xbf16>
    memref.global "public" @in0 : memref<96xbf16>
    func.func private @passthrough(memref<4610xbf16>, memref<4610xbf16>, i32)
    func.func private @baseline_scale(memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32)
    func.func private @add_kernel(memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32)
    func.func private @main_kernel(memref<4608xbf16>, memref<4610xbf16>, memref<2304xbf16>, i32, i32)
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
    %out_cons_prod_lock = aie.lock(%shim_noc_tile_2_0, 0) {init = 1 : i32, sym_name = "out_cons_prod_lock"}
    %out_cons_cons_lock = aie.lock(%shim_noc_tile_2_0, 1) {init = 0 : i32, sym_name = "out_cons_cons_lock"}
    %out_buff_0 = aie.buffer(%tile_2_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<32xbf16> 
    %out_buff_1 = aie.buffer(%tile_2_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out_buff_1"} : memref<32xbf16> 
    %out_prod_lock = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "out_prod_lock"}
    %out_cons_lock = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "out_cons_lock"}
    %of_sub2mean_buff_0 = aie.buffer(%tile_1_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_sub2mean_buff_0"} : memref<4608xbf16> 
    %of_sub2mean_buff_1 = aie.buffer(%tile_1_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_sub2mean_buff_1"} : memref<4608xbf16> 
    %of_sub2mean_prod_lock = aie.lock(%tile_1_2, 4) {init = 2 : i32, sym_name = "of_sub2mean_prod_lock"}
    %of_sub2mean_cons_lock = aie.lock(%tile_1_2, 5) {init = 0 : i32, sym_name = "of_sub2mean_cons_lock"}
    %of_imag2sub_cons_buff_0 = aie.buffer(%tile_1_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_imag2sub_cons_buff_0"} : memref<4608xbf16> 
    %of_imag2sub_cons_prod_lock = aie.lock(%tile_1_2, 2) {init = 1 : i32, sym_name = "of_imag2sub_cons_prod_lock"}
    %of_imag2sub_cons_cons_lock = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "of_imag2sub_cons_cons_lock"}
    %of_imag2sub_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_imag2sub_buff_0"} : memref<4608xbf16> 
    %of_imag2sub_prod_lock = aie.lock(%mem_tile_1_1, 0) {init = 2 : i32, sym_name = "of_imag2sub_prod_lock"}
    %of_imag2sub_cons_lock = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "of_imag2sub_cons_lock"}
    %of_real2sub_cons_buff_0 = aie.buffer(%tile_1_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_real2sub_cons_buff_0"} : memref<4608xbf16> 
    %of_real2sub_cons_prod_lock = aie.lock(%tile_1_2, 0) {init = 1 : i32, sym_name = "of_real2sub_cons_prod_lock"}
    %of_real2sub_cons_cons_lock = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "of_real2sub_cons_cons_lock"}
    %of_real2sub_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_real2sub_buff_0"} : memref<4608xbf16> 
    %of_real2sub_prod_lock = aie.lock(%mem_tile_2_1, 0) {init = 2 : i32, sym_name = "of_real2sub_prod_lock"}
    %of_real2sub_cons_lock = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "of_real2sub_cons_lock"}
    %of_join_imag1_buff_0 = aie.buffer(%tile_3_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_join_imag1_buff_0"} : memref<2304xbf16> 
    %of_join_imag1_prod_lock = aie.lock(%tile_3_2, 4) {init = 1 : i32, sym_name = "of_join_imag1_prod_lock"}
    %of_join_imag1_cons_lock = aie.lock(%tile_3_2, 5) {init = 0 : i32, sym_name = "of_join_imag1_cons_lock"}
    %of_join_imag0_buff_0 = aie.buffer(%tile_0_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_join_imag0_buff_0"} : memref<2304xbf16> 
    %of_join_imag0_prod_lock = aie.lock(%tile_0_2, 4) {init = 1 : i32, sym_name = "of_join_imag0_prod_lock"}
    %of_join_imag0_cons_lock = aie.lock(%tile_0_2, 5) {init = 0 : i32, sym_name = "of_join_imag0_cons_lock"}
    %of_join_real1_buff_0 = aie.buffer(%tile_2_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_join_real1_buff_0"} : memref<2304xbf16> 
    %of_join_real1_prod_lock = aie.lock(%tile_2_3, 4) {init = 1 : i32, sym_name = "of_join_real1_prod_lock"}
    %of_join_real1_cons_lock = aie.lock(%tile_2_3, 5) {init = 0 : i32, sym_name = "of_join_real1_cons_lock"}
    %of_join_real0_buff_0 = aie.buffer(%tile_1_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_join_real0_buff_0"} : memref<2304xbf16> 
    %of_join_real0_prod_lock = aie.lock(%tile_1_3, 4) {init = 1 : i32, sym_name = "of_join_real0_prod_lock"}
    %of_join_real0_cons_lock = aie.lock(%tile_1_3, 5) {init = 0 : i32, sym_name = "of_join_real0_cons_lock"}
    %of_add2main1_0_cons_buff_0 = aie.buffer(%tile_2_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add2main1_0_cons_buff_0"} : memref<4608xbf16> 
    %of_add2main1_0_cons_prod_lock = aie.lock(%tile_2_3, 2) {init = 1 : i32, sym_name = "of_add2main1_0_cons_prod_lock"}
    %of_add2main1_0_cons_cons_lock = aie.lock(%tile_2_3, 3) {init = 0 : i32, sym_name = "of_add2main1_0_cons_cons_lock"}
    %of_add2main1_1_cons_buff_0 = aie.buffer(%tile_3_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add2main1_1_cons_buff_0"} : memref<4608xbf16> 
    %of_add2main1_1_cons_prod_lock = aie.lock(%tile_3_2, 2) {init = 1 : i32, sym_name = "of_add2main1_1_cons_prod_lock"}
    %of_add2main1_1_cons_cons_lock = aie.lock(%tile_3_2, 3) {init = 0 : i32, sym_name = "of_add2main1_1_cons_cons_lock"}
    %of_add2main1_buff_0 = aie.buffer(%tile_2_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_add2main1_buff_0"} : memref<4608xbf16> 
    %of_add2main1_prod_lock = aie.lock(%tile_2_4, 2) {init = 1 : i32, sym_name = "of_add2main1_prod_lock"}
    %of_add2main1_cons_lock = aie.lock(%tile_2_4, 3) {init = 0 : i32, sym_name = "of_add2main1_cons_lock"}
    %of_add2main0_0_cons_buff_0 = aie.buffer(%tile_1_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add2main0_0_cons_buff_0"} : memref<4608xbf16> 
    %of_add2main0_0_cons_prod_lock = aie.lock(%tile_1_3, 2) {init = 1 : i32, sym_name = "of_add2main0_0_cons_prod_lock"}
    %of_add2main0_0_cons_cons_lock = aie.lock(%tile_1_3, 3) {init = 0 : i32, sym_name = "of_add2main0_0_cons_cons_lock"}
    %of_add2main0_1_cons_buff_0 = aie.buffer(%tile_0_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add2main0_1_cons_buff_0"} : memref<4608xbf16> 
    %of_add2main0_1_cons_prod_lock = aie.lock(%tile_0_2, 2) {init = 1 : i32, sym_name = "of_add2main0_1_cons_prod_lock"}
    %of_add2main0_1_cons_cons_lock = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "of_add2main0_1_cons_cons_lock"}
    %of_add2main0_buff_0 = aie.buffer(%tile_1_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_add2main0_buff_0"} : memref<4608xbf16> 
    %of_add2main0_prod_lock = aie.lock(%tile_1_4, 2) {init = 1 : i32, sym_name = "of_add2main0_prod_lock"}
    %of_add2main0_cons_lock = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "of_add2main0_cons_lock"}
    %of_add_uv1_buff_0 = aie.buffer(%tile_2_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_add_uv1_buff_0"} : memref<4608xbf16> 
    %of_add_uv1_prod_lock = aie.lock(%tile_2_5, 4) {init = 1 : i32, sym_name = "of_add_uv1_prod_lock"}
    %of_add_uv1_cons_lock = aie.lock(%tile_2_5, 5) {init = 0 : i32, sym_name = "of_add_uv1_cons_lock"}
    %of_add_uv0_buff_0 = aie.buffer(%tile_1_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_add_uv0_buff_0"} : memref<4608xbf16> 
    %of_add_uv0_prod_lock = aie.lock(%tile_1_5, 2) {init = 1 : i32, sym_name = "of_add_uv0_prod_lock"}
    %of_add_uv0_cons_lock = aie.lock(%tile_1_5, 3) {init = 0 : i32, sym_name = "of_add_uv0_cons_lock"}
    %of_add_w1_cons_buff_0 = aie.buffer(%tile_2_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add_w1_cons_buff_0"} : memref<4608xbf16> 
    %of_add_w1_cons_prod_lock = aie.lock(%tile_2_4, 0) {init = 1 : i32, sym_name = "of_add_w1_cons_prod_lock"}
    %of_add_w1_cons_cons_lock = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "of_add_w1_cons_cons_lock"}
    %of_add_w1_buff_0 = aie.buffer(%tile_3_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add_w1_buff_0"} : memref<4608xbf16> 
    %of_add_w1_prod_lock = aie.lock(%tile_3_3, 4) {init = 1 : i32, sym_name = "of_add_w1_prod_lock"}
    %of_add_w1_cons_lock = aie.lock(%tile_3_3, 5) {init = 0 : i32, sym_name = "of_add_w1_cons_lock"}
    %of_add_w0_cons_buff_0 = aie.buffer(%tile_1_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add_w0_cons_buff_0"} : memref<4608xbf16> 
    %of_add_w0_cons_prod_lock = aie.lock(%tile_1_4, 0) {init = 1 : i32, sym_name = "of_add_w0_cons_prod_lock"}
    %of_add_w0_cons_cons_lock = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "of_add_w0_cons_cons_lock"}
    %of_add_w0_buff_0 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add_w0_buff_0"} : memref<4608xbf16> 
    %of_add_w0_prod_lock = aie.lock(%tile_0_3, 4) {init = 1 : i32, sym_name = "of_add_w0_prod_lock"}
    %of_add_w0_cons_lock = aie.lock(%tile_0_3, 5) {init = 0 : i32, sym_name = "of_add_w0_cons_lock"}
    %of_add_v1_cons_buff_0 = aie.buffer(%tile_2_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add_v1_cons_buff_0"} : memref<4608xbf16> 
    %of_add_v1_cons_prod_lock = aie.lock(%tile_2_5, 2) {init = 1 : i32, sym_name = "of_add_v1_cons_prod_lock"}
    %of_add_v1_cons_cons_lock = aie.lock(%tile_2_5, 3) {init = 0 : i32, sym_name = "of_add_v1_cons_cons_lock"}
    %of_add_v1_buff_0 = aie.buffer(%tile_3_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add_v1_buff_0"} : memref<4608xbf16> 
    %of_add_v1_prod_lock = aie.lock(%tile_3_4, 4) {init = 1 : i32, sym_name = "of_add_v1_prod_lock"}
    %of_add_v1_cons_lock = aie.lock(%tile_3_4, 5) {init = 0 : i32, sym_name = "of_add_v1_cons_lock"}
    %of_add_v0_cons_buff_0 = aie.buffer(%tile_1_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add_v0_cons_buff_0"} : memref<4608xbf16> 
    %of_add_v0_cons_prod_lock = aie.lock(%tile_1_5, 0) {init = 1 : i32, sym_name = "of_add_v0_cons_prod_lock"}
    %of_add_v0_cons_cons_lock = aie.lock(%tile_1_5, 1) {init = 0 : i32, sym_name = "of_add_v0_cons_cons_lock"}
    %of_add_v0_buff_0 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add_v0_buff_0"} : memref<4608xbf16> 
    %of_add_v0_prod_lock = aie.lock(%tile_0_4, 4) {init = 1 : i32, sym_name = "of_add_v0_prod_lock"}
    %of_add_v0_cons_lock = aie.lock(%tile_0_4, 5) {init = 0 : i32, sym_name = "of_add_v0_cons_lock"}
    %of_add_u1_buff_0 = aie.buffer(%tile_2_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_add_u1_buff_0"} : memref<4608xbf16> 
    %of_add_u1_prod_lock = aie.lock(%tile_2_5, 0) {init = 1 : i32, sym_name = "of_add_u1_prod_lock"}
    %of_add_u1_cons_lock = aie.lock(%tile_2_5, 1) {init = 0 : i32, sym_name = "of_add_u1_cons_lock"}
    %of_add_u0_buff_0 = aie.buffer(%tile_0_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add_u0_buff_0"} : memref<4608xbf16> 
    %of_add_u0_prod_lock = aie.lock(%tile_0_5, 4) {init = 1 : i32, sym_name = "of_add_u0_prod_lock"}
    %of_add_u0_cons_lock = aie.lock(%tile_0_5, 5) {init = 0 : i32, sym_name = "of_add_u0_cons_lock"}
    %of_in_main14_cons_buff_0 = aie.buffer(%tile_3_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_main14_cons_buff_0"} : memref<4610xbf16> 
    %of_in_main14_cons_prod_lock = aie.lock(%tile_3_3, 2) {init = 1 : i32, sym_name = "of_in_main14_cons_prod_lock"}
    %of_in_main14_cons_cons_lock = aie.lock(%tile_3_3, 3) {init = 0 : i32, sym_name = "of_in_main14_cons_cons_lock"}
    %of_in_main13_cons_buff_0 = aie.buffer(%tile_3_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_main13_cons_buff_0"} : memref<4610xbf16> 
    %of_in_main13_cons_prod_lock = aie.lock(%tile_3_4, 2) {init = 1 : i32, sym_name = "of_in_main13_cons_prod_lock"}
    %of_in_main13_cons_cons_lock = aie.lock(%tile_3_4, 3) {init = 0 : i32, sym_name = "of_in_main13_cons_cons_lock"}
    %of_in_main12_cons_buff_0 = aie.buffer(%tile_3_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_main12_cons_buff_0"} : memref<4610xbf16> 
    %of_in_main12_cons_prod_lock = aie.lock(%tile_3_5, 2) {init = 1 : i32, sym_name = "of_in_main12_cons_prod_lock"}
    %of_in_main12_cons_cons_lock = aie.lock(%tile_3_5, 3) {init = 0 : i32, sym_name = "of_in_main12_cons_cons_lock"}
    %of_in_main11_cons_buff_0 = aie.buffer(%tile_3_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_main11_cons_buff_0"} : memref<4610xbf16> 
    %of_in_main11_cons_prod_lock = aie.lock(%tile_3_2, 0) {init = 1 : i32, sym_name = "of_in_main11_cons_prod_lock"}
    %of_in_main11_cons_cons_lock = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "of_in_main11_cons_cons_lock"}
    %of_in_main10_cons_buff_0 = aie.buffer(%tile_2_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_main10_cons_buff_0"} : memref<4610xbf16> 
    %of_in_main10_cons_prod_lock = aie.lock(%tile_2_3, 0) {init = 1 : i32, sym_name = "of_in_main10_cons_prod_lock"}
    %of_in_main10_cons_cons_lock = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "of_in_main10_cons_cons_lock"}
    %of_in_main04_cons_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_main04_cons_buff_0"} : memref<4610xbf16> 
    %of_in_main04_cons_prod_lock = aie.lock(%tile_0_3, 2) {init = 1 : i32, sym_name = "of_in_main04_cons_prod_lock"}
    %of_in_main04_cons_cons_lock = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "of_in_main04_cons_cons_lock"}
    %of_in_main03_cons_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_main03_cons_buff_0"} : memref<4610xbf16> 
    %of_in_main03_cons_prod_lock = aie.lock(%tile_0_4, 2) {init = 1 : i32, sym_name = "of_in_main03_cons_prod_lock"}
    %of_in_main03_cons_cons_lock = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "of_in_main03_cons_cons_lock"}
    %of_in_main02_cons_buff_0 = aie.buffer(%tile_0_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_main02_cons_buff_0"} : memref<4610xbf16> 
    %of_in_main02_cons_prod_lock = aie.lock(%tile_0_5, 2) {init = 1 : i32, sym_name = "of_in_main02_cons_prod_lock"}
    %of_in_main02_cons_cons_lock = aie.lock(%tile_0_5, 3) {init = 0 : i32, sym_name = "of_in_main02_cons_cons_lock"}
    %of_in_main01_cons_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_main01_cons_buff_0"} : memref<4610xbf16> 
    %of_in_main01_cons_prod_lock = aie.lock(%tile_0_2, 0) {init = 1 : i32, sym_name = "of_in_main01_cons_prod_lock"}
    %of_in_main01_cons_cons_lock = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "of_in_main01_cons_cons_lock"}
    %of_in_main00_cons_buff_0 = aie.buffer(%tile_1_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_main00_cons_buff_0"} : memref<4610xbf16> 
    %of_in_main00_cons_prod_lock = aie.lock(%tile_1_3, 0) {init = 1 : i32, sym_name = "of_in_main00_cons_prod_lock"}
    %of_in_main00_cons_cons_lock = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "of_in_main00_cons_cons_lock"}
    %in2_cons_buff_0 = aie.buffer(%mem_tile_3_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_0"} : memref<23050xbf16> 
    %in2_cons_buff_1 = aie.buffer(%mem_tile_3_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in2_cons_buff_1"} : memref<23050xbf16> 
    %in2_cons_prod_lock = aie.lock(%mem_tile_3_1, 0) {init = 10 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%mem_tile_3_1, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in2_prod_lock = aie.lock(%shim_noc_tile_3_0, 0) {init = 1 : i32, sym_name = "in2_prod_lock"}
    %in2_cons_lock = aie.lock(%shim_noc_tile_3_0, 1) {init = 0 : i32, sym_name = "in2_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in1_cons_buff_0"} : memref<23050xbf16> 
    %in1_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in1_cons_buff_1"} : memref<23050xbf16> 
    %in1_cons_prod_lock = aie.lock(%mem_tile_0_1, 0) {init = 10 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%mem_tile_0_1, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in1_prod_lock = aie.lock(%shim_noc_tile_0_0, 0) {init = 1 : i32, sym_name = "in1_prod_lock"}
    %in1_cons_lock = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "in1_cons_lock"}
    %in0_0_cons_buff_0 = aie.buffer(%tile_0_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_0_cons_buff_0"} : memref<96xbf16> 
    %in0_0_cons_buff_1 = aie.buffer(%tile_0_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_0_cons_buff_1"} : memref<96xbf16> 
    %in0_0_cons_prod_lock = aie.lock(%tile_0_5, 0) {init = 2 : i32, sym_name = "in0_0_cons_prod_lock"}
    %in0_0_cons_cons_lock = aie.lock(%tile_0_5, 1) {init = 0 : i32, sym_name = "in0_0_cons_cons_lock"}
    %in0_1_cons_buff_0 = aie.buffer(%tile_0_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_1_cons_buff_0"} : memref<96xbf16> 
    %in0_1_cons_buff_1 = aie.buffer(%tile_0_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_1_cons_buff_1"} : memref<96xbf16> 
    %in0_1_cons_prod_lock = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "in0_1_cons_prod_lock"}
    %in0_1_cons_cons_lock = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "in0_1_cons_cons_lock"}
    %in0_2_cons_buff_0 = aie.buffer(%tile_0_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_2_cons_buff_0"} : memref<96xbf16> 
    %in0_2_cons_buff_1 = aie.buffer(%tile_0_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_2_cons_buff_1"} : memref<96xbf16> 
    %in0_2_cons_prod_lock = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "in0_2_cons_prod_lock"}
    %in0_2_cons_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "in0_2_cons_cons_lock"}
    %in0_3_cons_buff_0 = aie.buffer(%tile_3_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in0_3_cons_buff_0"} : memref<96xbf16> 
    %in0_3_cons_buff_1 = aie.buffer(%tile_3_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_3_cons_buff_1"} : memref<96xbf16> 
    %in0_3_cons_prod_lock = aie.lock(%tile_3_5, 0) {init = 2 : i32, sym_name = "in0_3_cons_prod_lock"}
    %in0_3_cons_cons_lock = aie.lock(%tile_3_5, 1) {init = 0 : i32, sym_name = "in0_3_cons_cons_lock"}
    %in0_4_cons_buff_0 = aie.buffer(%tile_3_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_4_cons_buff_0"} : memref<96xbf16> 
    %in0_4_cons_buff_1 = aie.buffer(%tile_3_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_4_cons_buff_1"} : memref<96xbf16> 
    %in0_4_cons_prod_lock = aie.lock(%tile_3_4, 0) {init = 2 : i32, sym_name = "in0_4_cons_prod_lock"}
    %in0_4_cons_cons_lock = aie.lock(%tile_3_4, 1) {init = 0 : i32, sym_name = "in0_4_cons_cons_lock"}
    %in0_5_cons_buff_0 = aie.buffer(%tile_3_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_5_cons_buff_0"} : memref<96xbf16> 
    %in0_5_cons_buff_1 = aie.buffer(%tile_3_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_5_cons_buff_1"} : memref<96xbf16> 
    %in0_5_cons_prod_lock = aie.lock(%tile_3_3, 0) {init = 2 : i32, sym_name = "in0_5_cons_prod_lock"}
    %in0_5_cons_cons_lock = aie.lock(%tile_3_3, 1) {init = 0 : i32, sym_name = "in0_5_cons_cons_lock"}
    %in0_prod_lock = aie.lock(%shim_noc_tile_1_0, 0) {init = 1 : i32, sym_name = "in0_prod_lock"}
    %in0_cons_lock = aie.lock(%shim_noc_tile_1_0, 1) {init = 0 : i32, sym_name = "in0_cons_lock"}
    aie.flow(%shim_noc_tile_1_0, DMA : 0, %tile_3_3, DMA : 0)
    aie.flow(%shim_noc_tile_1_0, DMA : 0, %tile_3_4, DMA : 0)
    aie.flow(%shim_noc_tile_1_0, DMA : 0, %tile_3_5, DMA : 0)
    aie.flow(%shim_noc_tile_1_0, DMA : 0, %tile_0_3, DMA : 0)
    aie.flow(%shim_noc_tile_1_0, DMA : 0, %tile_0_4, DMA : 0)
    aie.flow(%shim_noc_tile_1_0, DMA : 0, %tile_0_5, DMA : 0)
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %mem_tile_0_1, DMA : 0)
    aie.flow(%shim_noc_tile_3_0, DMA : 0, %mem_tile_3_1, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 0, %tile_1_3, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 1, %tile_0_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 2, %tile_0_5, DMA : 1)
    aie.flow(%mem_tile_0_1, DMA : 3, %tile_0_4, DMA : 1)
    aie.flow(%mem_tile_0_1, DMA : 4, %tile_0_3, DMA : 1)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_2_3, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 1, %tile_3_2, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 2, %tile_3_5, DMA : 1)
    aie.flow(%mem_tile_3_1, DMA : 3, %tile_3_4, DMA : 1)
    aie.flow(%mem_tile_3_1, DMA : 4, %tile_3_3, DMA : 1)
    aie.flow(%tile_0_4, DMA : 0, %tile_1_5, DMA : 0)
    aie.flow(%tile_3_4, DMA : 0, %tile_2_5, DMA : 0)
    aie.flow(%tile_0_3, DMA : 0, %tile_1_4, DMA : 0)
    aie.flow(%tile_3_3, DMA : 0, %tile_2_4, DMA : 0)
    aie.flow(%tile_1_4, DMA : 0, %tile_0_2, DMA : 1)
    aie.flow(%tile_1_4, DMA : 0, %tile_1_3, DMA : 1)
    aie.flow(%tile_2_4, DMA : 0, %tile_3_2, DMA : 1)
    aie.flow(%tile_2_4, DMA : 0, %tile_2_3, DMA : 1)
    aie.flow(%tile_1_3, DMA : 0, %mem_tile_2_1, DMA : 0)
    aie.flow(%tile_2_3, DMA : 0, %mem_tile_2_1, DMA : 1)
    aie.flow(%tile_0_2, DMA : 0, %mem_tile_1_1, DMA : 0)
    aie.flow(%tile_3_2, DMA : 0, %mem_tile_1_1, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_1_2, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 0, %tile_1_2, DMA : 1)
    aie.flow(%tile_2_2, DMA : 0, %shim_noc_tile_2_0, DMA : 0)
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_main02_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c512 = arith.constant 512 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c512 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c32_i32 = arith.constant 32 : i32
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_2 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32, %c32_i32, %c0_i32, %c0_i32_2) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_3 = arith.constant 4608 : i32
      %c32_i32_4 = arith.constant 32 : i32
      %c1_i32 = arith.constant 1 : i32
      %c0_i32_5 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_3, %c32_i32_4, %c1_i32, %c0_i32_5) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_6 = arith.constant 4608 : i32
      %c32_i32_7 = arith.constant 32 : i32
      %c2_i32 = arith.constant 2 : i32
      %c0_i32_8 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_6, %c32_i32_7, %c2_i32, %c0_i32_8) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_9 = arith.constant 4608 : i32
      %c32_i32_10 = arith.constant 32 : i32
      %c3_i32 = arith.constant 3 : i32
      %c0_i32_11 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_9, %c32_i32_10, %c3_i32, %c0_i32_11) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_12 = arith.constant 4608 : i32
      %c32_i32_13 = arith.constant 32 : i32
      %c4_i32 = arith.constant 4 : i32
      %c0_i32_14 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_12, %c32_i32_13, %c4_i32, %c0_i32_14) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_15 = arith.constant 4608 : i32
      %c32_i32_16 = arith.constant 32 : i32
      %c5_i32 = arith.constant 5 : i32
      %c0_i32_17 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_15, %c32_i32_16, %c5_i32, %c0_i32_17) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_18 = arith.constant 4608 : i32
      %c32_i32_19 = arith.constant 32 : i32
      %c6_i32 = arith.constant 6 : i32
      %c0_i32_20 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_18, %c32_i32_19, %c6_i32, %c0_i32_20) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_21 = arith.constant 4608 : i32
      %c32_i32_22 = arith.constant 32 : i32
      %c7_i32 = arith.constant 7 : i32
      %c0_i32_23 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_21, %c32_i32_22, %c7_i32, %c0_i32_23) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_24 = arith.constant 4608 : i32
      %c32_i32_25 = arith.constant 32 : i32
      %c8_i32 = arith.constant 8 : i32
      %c0_i32_26 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_24, %c32_i32_25, %c8_i32, %c0_i32_26) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_27 = arith.constant 4608 : i32
      %c32_i32_28 = arith.constant 32 : i32
      %c9_i32 = arith.constant 9 : i32
      %c0_i32_29 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_27, %c32_i32_28, %c9_i32, %c0_i32_29) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_30 = arith.constant 4608 : i32
      %c32_i32_31 = arith.constant 32 : i32
      %c10_i32 = arith.constant 10 : i32
      %c0_i32_32 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_30, %c32_i32_31, %c10_i32, %c0_i32_32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_33 = arith.constant 4608 : i32
      %c32_i32_34 = arith.constant 32 : i32
      %c11_i32 = arith.constant 11 : i32
      %c0_i32_35 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_33, %c32_i32_34, %c11_i32, %c0_i32_35) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_36 = arith.constant 4608 : i32
      %c32_i32_37 = arith.constant 32 : i32
      %c12_i32 = arith.constant 12 : i32
      %c0_i32_38 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_36, %c32_i32_37, %c12_i32, %c0_i32_38) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_39 = arith.constant 4608 : i32
      %c32_i32_40 = arith.constant 32 : i32
      %c13_i32 = arith.constant 13 : i32
      %c0_i32_41 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_39, %c32_i32_40, %c13_i32, %c0_i32_41) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_42 = arith.constant 4608 : i32
      %c32_i32_43 = arith.constant 32 : i32
      %c14_i32 = arith.constant 14 : i32
      %c0_i32_44 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_42, %c32_i32_43, %c14_i32, %c0_i32_44) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_45 = arith.constant 4608 : i32
      %c32_i32_46 = arith.constant 32 : i32
      %c15_i32 = arith.constant 15 : i32
      %c0_i32_47 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_45, %c32_i32_46, %c15_i32, %c0_i32_47) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_48 = arith.constant 4608 : i32
      %c32_i32_49 = arith.constant 32 : i32
      %c16_i32 = arith.constant 16 : i32
      %c0_i32_50 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_48, %c32_i32_49, %c16_i32, %c0_i32_50) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_51 = arith.constant 4608 : i32
      %c32_i32_52 = arith.constant 32 : i32
      %c17_i32 = arith.constant 17 : i32
      %c0_i32_53 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_51, %c32_i32_52, %c17_i32, %c0_i32_53) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_54 = arith.constant 4608 : i32
      %c32_i32_55 = arith.constant 32 : i32
      %c18_i32 = arith.constant 18 : i32
      %c0_i32_56 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_54, %c32_i32_55, %c18_i32, %c0_i32_56) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_57 = arith.constant 4608 : i32
      %c32_i32_58 = arith.constant 32 : i32
      %c19_i32 = arith.constant 19 : i32
      %c0_i32_59 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_57, %c32_i32_58, %c19_i32, %c0_i32_59) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_60 = arith.constant 4608 : i32
      %c32_i32_61 = arith.constant 32 : i32
      %c20_i32 = arith.constant 20 : i32
      %c0_i32_62 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_60, %c32_i32_61, %c20_i32, %c0_i32_62) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_63 = arith.constant 4608 : i32
      %c32_i32_64 = arith.constant 32 : i32
      %c21_i32 = arith.constant 21 : i32
      %c0_i32_65 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_63, %c32_i32_64, %c21_i32, %c0_i32_65) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_66 = arith.constant 4608 : i32
      %c32_i32_67 = arith.constant 32 : i32
      %c22_i32 = arith.constant 22 : i32
      %c0_i32_68 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_66, %c32_i32_67, %c22_i32, %c0_i32_68) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_69 = arith.constant 4608 : i32
      %c32_i32_70 = arith.constant 32 : i32
      %c23_i32 = arith.constant 23 : i32
      %c0_i32_71 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_69, %c32_i32_70, %c23_i32, %c0_i32_71) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_72 = arith.constant 4608 : i32
      %c32_i32_73 = arith.constant 32 : i32
      %c24_i32 = arith.constant 24 : i32
      %c0_i32_74 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_72, %c32_i32_73, %c24_i32, %c0_i32_74) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_75 = arith.constant 4608 : i32
      %c32_i32_76 = arith.constant 32 : i32
      %c25_i32 = arith.constant 25 : i32
      %c0_i32_77 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_75, %c32_i32_76, %c25_i32, %c0_i32_77) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_78 = arith.constant 4608 : i32
      %c32_i32_79 = arith.constant 32 : i32
      %c26_i32 = arith.constant 26 : i32
      %c0_i32_80 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_78, %c32_i32_79, %c26_i32, %c0_i32_80) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_81 = arith.constant 4608 : i32
      %c32_i32_82 = arith.constant 32 : i32
      %c27_i32 = arith.constant 27 : i32
      %c0_i32_83 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_81, %c32_i32_82, %c27_i32, %c0_i32_83) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_84 = arith.constant 4608 : i32
      %c32_i32_85 = arith.constant 32 : i32
      %c28_i32 = arith.constant 28 : i32
      %c0_i32_86 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_84, %c32_i32_85, %c28_i32, %c0_i32_86) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_87 = arith.constant 4608 : i32
      %c32_i32_88 = arith.constant 32 : i32
      %c29_i32 = arith.constant 29 : i32
      %c0_i32_89 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_87, %c32_i32_88, %c29_i32, %c0_i32_89) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_90 = arith.constant 4608 : i32
      %c32_i32_91 = arith.constant 32 : i32
      %c30_i32 = arith.constant 30 : i32
      %c0_i32_92 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_90, %c32_i32_91, %c30_i32, %c0_i32_92) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_93 = arith.constant 4608 : i32
      %c32_i32_94 = arith.constant 32 : i32
      %c31_i32 = arith.constant 31 : i32
      %c0_i32_95 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_0, %of_add_u0_buff_0, %c4608_i32_93, %c32_i32_94, %c31_i32, %c0_i32_95) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_96 = arith.constant 4608 : i32
      %c32_i32_97 = arith.constant 32 : i32
      %c0_i32_98 = arith.constant 0 : i32
      %c0_i32_99 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_96, %c32_i32_97, %c0_i32_98, %c0_i32_99) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_100 = arith.constant 4608 : i32
      %c32_i32_101 = arith.constant 32 : i32
      %c1_i32_102 = arith.constant 1 : i32
      %c0_i32_103 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_100, %c32_i32_101, %c1_i32_102, %c0_i32_103) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_104 = arith.constant 4608 : i32
      %c32_i32_105 = arith.constant 32 : i32
      %c2_i32_106 = arith.constant 2 : i32
      %c0_i32_107 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_104, %c32_i32_105, %c2_i32_106, %c0_i32_107) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_108 = arith.constant 4608 : i32
      %c32_i32_109 = arith.constant 32 : i32
      %c3_i32_110 = arith.constant 3 : i32
      %c0_i32_111 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_108, %c32_i32_109, %c3_i32_110, %c0_i32_111) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_112 = arith.constant 4608 : i32
      %c32_i32_113 = arith.constant 32 : i32
      %c4_i32_114 = arith.constant 4 : i32
      %c0_i32_115 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_112, %c32_i32_113, %c4_i32_114, %c0_i32_115) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_116 = arith.constant 4608 : i32
      %c32_i32_117 = arith.constant 32 : i32
      %c5_i32_118 = arith.constant 5 : i32
      %c0_i32_119 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_116, %c32_i32_117, %c5_i32_118, %c0_i32_119) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_120 = arith.constant 4608 : i32
      %c32_i32_121 = arith.constant 32 : i32
      %c6_i32_122 = arith.constant 6 : i32
      %c0_i32_123 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_120, %c32_i32_121, %c6_i32_122, %c0_i32_123) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_124 = arith.constant 4608 : i32
      %c32_i32_125 = arith.constant 32 : i32
      %c7_i32_126 = arith.constant 7 : i32
      %c0_i32_127 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_124, %c32_i32_125, %c7_i32_126, %c0_i32_127) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_128 = arith.constant 4608 : i32
      %c32_i32_129 = arith.constant 32 : i32
      %c8_i32_130 = arith.constant 8 : i32
      %c0_i32_131 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_128, %c32_i32_129, %c8_i32_130, %c0_i32_131) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_132 = arith.constant 4608 : i32
      %c32_i32_133 = arith.constant 32 : i32
      %c9_i32_134 = arith.constant 9 : i32
      %c0_i32_135 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_132, %c32_i32_133, %c9_i32_134, %c0_i32_135) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_136 = arith.constant 4608 : i32
      %c32_i32_137 = arith.constant 32 : i32
      %c10_i32_138 = arith.constant 10 : i32
      %c0_i32_139 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_136, %c32_i32_137, %c10_i32_138, %c0_i32_139) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_140 = arith.constant 4608 : i32
      %c32_i32_141 = arith.constant 32 : i32
      %c11_i32_142 = arith.constant 11 : i32
      %c0_i32_143 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_140, %c32_i32_141, %c11_i32_142, %c0_i32_143) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_144 = arith.constant 4608 : i32
      %c32_i32_145 = arith.constant 32 : i32
      %c12_i32_146 = arith.constant 12 : i32
      %c0_i32_147 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_144, %c32_i32_145, %c12_i32_146, %c0_i32_147) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_148 = arith.constant 4608 : i32
      %c32_i32_149 = arith.constant 32 : i32
      %c13_i32_150 = arith.constant 13 : i32
      %c0_i32_151 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_148, %c32_i32_149, %c13_i32_150, %c0_i32_151) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_152 = arith.constant 4608 : i32
      %c32_i32_153 = arith.constant 32 : i32
      %c14_i32_154 = arith.constant 14 : i32
      %c0_i32_155 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_152, %c32_i32_153, %c14_i32_154, %c0_i32_155) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_156 = arith.constant 4608 : i32
      %c32_i32_157 = arith.constant 32 : i32
      %c15_i32_158 = arith.constant 15 : i32
      %c0_i32_159 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_156, %c32_i32_157, %c15_i32_158, %c0_i32_159) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_160 = arith.constant 4608 : i32
      %c32_i32_161 = arith.constant 32 : i32
      %c16_i32_162 = arith.constant 16 : i32
      %c0_i32_163 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_160, %c32_i32_161, %c16_i32_162, %c0_i32_163) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_164 = arith.constant 4608 : i32
      %c32_i32_165 = arith.constant 32 : i32
      %c17_i32_166 = arith.constant 17 : i32
      %c0_i32_167 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_164, %c32_i32_165, %c17_i32_166, %c0_i32_167) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_168 = arith.constant 4608 : i32
      %c32_i32_169 = arith.constant 32 : i32
      %c18_i32_170 = arith.constant 18 : i32
      %c0_i32_171 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_168, %c32_i32_169, %c18_i32_170, %c0_i32_171) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_172 = arith.constant 4608 : i32
      %c32_i32_173 = arith.constant 32 : i32
      %c19_i32_174 = arith.constant 19 : i32
      %c0_i32_175 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_172, %c32_i32_173, %c19_i32_174, %c0_i32_175) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_176 = arith.constant 4608 : i32
      %c32_i32_177 = arith.constant 32 : i32
      %c20_i32_178 = arith.constant 20 : i32
      %c0_i32_179 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_176, %c32_i32_177, %c20_i32_178, %c0_i32_179) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_180 = arith.constant 4608 : i32
      %c32_i32_181 = arith.constant 32 : i32
      %c21_i32_182 = arith.constant 21 : i32
      %c0_i32_183 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_180, %c32_i32_181, %c21_i32_182, %c0_i32_183) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_184 = arith.constant 4608 : i32
      %c32_i32_185 = arith.constant 32 : i32
      %c22_i32_186 = arith.constant 22 : i32
      %c0_i32_187 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_184, %c32_i32_185, %c22_i32_186, %c0_i32_187) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_188 = arith.constant 4608 : i32
      %c32_i32_189 = arith.constant 32 : i32
      %c23_i32_190 = arith.constant 23 : i32
      %c0_i32_191 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_188, %c32_i32_189, %c23_i32_190, %c0_i32_191) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_192 = arith.constant 4608 : i32
      %c32_i32_193 = arith.constant 32 : i32
      %c24_i32_194 = arith.constant 24 : i32
      %c0_i32_195 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_192, %c32_i32_193, %c24_i32_194, %c0_i32_195) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_196 = arith.constant 4608 : i32
      %c32_i32_197 = arith.constant 32 : i32
      %c25_i32_198 = arith.constant 25 : i32
      %c0_i32_199 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_196, %c32_i32_197, %c25_i32_198, %c0_i32_199) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_200 = arith.constant 4608 : i32
      %c32_i32_201 = arith.constant 32 : i32
      %c26_i32_202 = arith.constant 26 : i32
      %c0_i32_203 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_200, %c32_i32_201, %c26_i32_202, %c0_i32_203) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_204 = arith.constant 4608 : i32
      %c32_i32_205 = arith.constant 32 : i32
      %c27_i32_206 = arith.constant 27 : i32
      %c0_i32_207 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_204, %c32_i32_205, %c27_i32_206, %c0_i32_207) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_208 = arith.constant 4608 : i32
      %c32_i32_209 = arith.constant 32 : i32
      %c28_i32_210 = arith.constant 28 : i32
      %c0_i32_211 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_208, %c32_i32_209, %c28_i32_210, %c0_i32_211) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_212 = arith.constant 4608 : i32
      %c32_i32_213 = arith.constant 32 : i32
      %c29_i32_214 = arith.constant 29 : i32
      %c0_i32_215 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_212, %c32_i32_213, %c29_i32_214, %c0_i32_215) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_216 = arith.constant 4608 : i32
      %c32_i32_217 = arith.constant 32 : i32
      %c30_i32_218 = arith.constant 30 : i32
      %c0_i32_219 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_216, %c32_i32_217, %c30_i32_218, %c0_i32_219) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_220 = arith.constant 4608 : i32
      %c32_i32_221 = arith.constant 32 : i32
      %c31_i32_222 = arith.constant 31 : i32
      %c0_i32_223 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main02_cons_buff_0, %in0_0_cons_buff_1, %of_add_u0_buff_0, %c4608_i32_220, %c32_i32_221, %c31_i32_222, %c0_i32_223) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_main02_cons_prod_lock, Release, 1)
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "scale.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_main03_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c512 = arith.constant 512 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c512 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c32_i32 = arith.constant 32 : i32
      %c0_i32 = arith.constant 0 : i32
      %c1_i32 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32, %c32_i32, %c0_i32, %c1_i32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_2 = arith.constant 4608 : i32
      %c32_i32_3 = arith.constant 32 : i32
      %c1_i32_4 = arith.constant 1 : i32
      %c1_i32_5 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_2, %c32_i32_3, %c1_i32_4, %c1_i32_5) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_6 = arith.constant 4608 : i32
      %c32_i32_7 = arith.constant 32 : i32
      %c2_i32 = arith.constant 2 : i32
      %c1_i32_8 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_6, %c32_i32_7, %c2_i32, %c1_i32_8) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_9 = arith.constant 4608 : i32
      %c32_i32_10 = arith.constant 32 : i32
      %c3_i32 = arith.constant 3 : i32
      %c1_i32_11 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_9, %c32_i32_10, %c3_i32, %c1_i32_11) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_12 = arith.constant 4608 : i32
      %c32_i32_13 = arith.constant 32 : i32
      %c4_i32 = arith.constant 4 : i32
      %c1_i32_14 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_12, %c32_i32_13, %c4_i32, %c1_i32_14) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_15 = arith.constant 4608 : i32
      %c32_i32_16 = arith.constant 32 : i32
      %c5_i32 = arith.constant 5 : i32
      %c1_i32_17 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_15, %c32_i32_16, %c5_i32, %c1_i32_17) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_18 = arith.constant 4608 : i32
      %c32_i32_19 = arith.constant 32 : i32
      %c6_i32 = arith.constant 6 : i32
      %c1_i32_20 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_18, %c32_i32_19, %c6_i32, %c1_i32_20) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_21 = arith.constant 4608 : i32
      %c32_i32_22 = arith.constant 32 : i32
      %c7_i32 = arith.constant 7 : i32
      %c1_i32_23 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_21, %c32_i32_22, %c7_i32, %c1_i32_23) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_24 = arith.constant 4608 : i32
      %c32_i32_25 = arith.constant 32 : i32
      %c8_i32 = arith.constant 8 : i32
      %c1_i32_26 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_24, %c32_i32_25, %c8_i32, %c1_i32_26) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_27 = arith.constant 4608 : i32
      %c32_i32_28 = arith.constant 32 : i32
      %c9_i32 = arith.constant 9 : i32
      %c1_i32_29 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_27, %c32_i32_28, %c9_i32, %c1_i32_29) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_30 = arith.constant 4608 : i32
      %c32_i32_31 = arith.constant 32 : i32
      %c10_i32 = arith.constant 10 : i32
      %c1_i32_32 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_30, %c32_i32_31, %c10_i32, %c1_i32_32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_33 = arith.constant 4608 : i32
      %c32_i32_34 = arith.constant 32 : i32
      %c11_i32 = arith.constant 11 : i32
      %c1_i32_35 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_33, %c32_i32_34, %c11_i32, %c1_i32_35) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_36 = arith.constant 4608 : i32
      %c32_i32_37 = arith.constant 32 : i32
      %c12_i32 = arith.constant 12 : i32
      %c1_i32_38 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_36, %c32_i32_37, %c12_i32, %c1_i32_38) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_39 = arith.constant 4608 : i32
      %c32_i32_40 = arith.constant 32 : i32
      %c13_i32 = arith.constant 13 : i32
      %c1_i32_41 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_39, %c32_i32_40, %c13_i32, %c1_i32_41) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_42 = arith.constant 4608 : i32
      %c32_i32_43 = arith.constant 32 : i32
      %c14_i32 = arith.constant 14 : i32
      %c1_i32_44 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_42, %c32_i32_43, %c14_i32, %c1_i32_44) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_45 = arith.constant 4608 : i32
      %c32_i32_46 = arith.constant 32 : i32
      %c15_i32 = arith.constant 15 : i32
      %c1_i32_47 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_45, %c32_i32_46, %c15_i32, %c1_i32_47) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_48 = arith.constant 4608 : i32
      %c32_i32_49 = arith.constant 32 : i32
      %c16_i32 = arith.constant 16 : i32
      %c1_i32_50 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_48, %c32_i32_49, %c16_i32, %c1_i32_50) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_51 = arith.constant 4608 : i32
      %c32_i32_52 = arith.constant 32 : i32
      %c17_i32 = arith.constant 17 : i32
      %c1_i32_53 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_51, %c32_i32_52, %c17_i32, %c1_i32_53) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_54 = arith.constant 4608 : i32
      %c32_i32_55 = arith.constant 32 : i32
      %c18_i32 = arith.constant 18 : i32
      %c1_i32_56 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_54, %c32_i32_55, %c18_i32, %c1_i32_56) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_57 = arith.constant 4608 : i32
      %c32_i32_58 = arith.constant 32 : i32
      %c19_i32 = arith.constant 19 : i32
      %c1_i32_59 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_57, %c32_i32_58, %c19_i32, %c1_i32_59) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_60 = arith.constant 4608 : i32
      %c32_i32_61 = arith.constant 32 : i32
      %c20_i32 = arith.constant 20 : i32
      %c1_i32_62 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_60, %c32_i32_61, %c20_i32, %c1_i32_62) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_63 = arith.constant 4608 : i32
      %c32_i32_64 = arith.constant 32 : i32
      %c21_i32 = arith.constant 21 : i32
      %c1_i32_65 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_63, %c32_i32_64, %c21_i32, %c1_i32_65) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_66 = arith.constant 4608 : i32
      %c32_i32_67 = arith.constant 32 : i32
      %c22_i32 = arith.constant 22 : i32
      %c1_i32_68 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_66, %c32_i32_67, %c22_i32, %c1_i32_68) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_69 = arith.constant 4608 : i32
      %c32_i32_70 = arith.constant 32 : i32
      %c23_i32 = arith.constant 23 : i32
      %c1_i32_71 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_69, %c32_i32_70, %c23_i32, %c1_i32_71) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_72 = arith.constant 4608 : i32
      %c32_i32_73 = arith.constant 32 : i32
      %c24_i32 = arith.constant 24 : i32
      %c1_i32_74 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_72, %c32_i32_73, %c24_i32, %c1_i32_74) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_75 = arith.constant 4608 : i32
      %c32_i32_76 = arith.constant 32 : i32
      %c25_i32 = arith.constant 25 : i32
      %c1_i32_77 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_75, %c32_i32_76, %c25_i32, %c1_i32_77) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_78 = arith.constant 4608 : i32
      %c32_i32_79 = arith.constant 32 : i32
      %c26_i32 = arith.constant 26 : i32
      %c1_i32_80 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_78, %c32_i32_79, %c26_i32, %c1_i32_80) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_81 = arith.constant 4608 : i32
      %c32_i32_82 = arith.constant 32 : i32
      %c27_i32 = arith.constant 27 : i32
      %c1_i32_83 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_81, %c32_i32_82, %c27_i32, %c1_i32_83) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_84 = arith.constant 4608 : i32
      %c32_i32_85 = arith.constant 32 : i32
      %c28_i32 = arith.constant 28 : i32
      %c1_i32_86 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_84, %c32_i32_85, %c28_i32, %c1_i32_86) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_87 = arith.constant 4608 : i32
      %c32_i32_88 = arith.constant 32 : i32
      %c29_i32 = arith.constant 29 : i32
      %c1_i32_89 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_87, %c32_i32_88, %c29_i32, %c1_i32_89) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_90 = arith.constant 4608 : i32
      %c32_i32_91 = arith.constant 32 : i32
      %c30_i32 = arith.constant 30 : i32
      %c1_i32_92 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_90, %c32_i32_91, %c30_i32, %c1_i32_92) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_93 = arith.constant 4608 : i32
      %c32_i32_94 = arith.constant 32 : i32
      %c31_i32 = arith.constant 31 : i32
      %c1_i32_95 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_0, %of_add_v0_buff_0, %c4608_i32_93, %c32_i32_94, %c31_i32, %c1_i32_95) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_96 = arith.constant 4608 : i32
      %c32_i32_97 = arith.constant 32 : i32
      %c0_i32_98 = arith.constant 0 : i32
      %c1_i32_99 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_96, %c32_i32_97, %c0_i32_98, %c1_i32_99) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_100 = arith.constant 4608 : i32
      %c32_i32_101 = arith.constant 32 : i32
      %c1_i32_102 = arith.constant 1 : i32
      %c1_i32_103 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_100, %c32_i32_101, %c1_i32_102, %c1_i32_103) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_104 = arith.constant 4608 : i32
      %c32_i32_105 = arith.constant 32 : i32
      %c2_i32_106 = arith.constant 2 : i32
      %c1_i32_107 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_104, %c32_i32_105, %c2_i32_106, %c1_i32_107) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_108 = arith.constant 4608 : i32
      %c32_i32_109 = arith.constant 32 : i32
      %c3_i32_110 = arith.constant 3 : i32
      %c1_i32_111 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_108, %c32_i32_109, %c3_i32_110, %c1_i32_111) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_112 = arith.constant 4608 : i32
      %c32_i32_113 = arith.constant 32 : i32
      %c4_i32_114 = arith.constant 4 : i32
      %c1_i32_115 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_112, %c32_i32_113, %c4_i32_114, %c1_i32_115) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_116 = arith.constant 4608 : i32
      %c32_i32_117 = arith.constant 32 : i32
      %c5_i32_118 = arith.constant 5 : i32
      %c1_i32_119 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_116, %c32_i32_117, %c5_i32_118, %c1_i32_119) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_120 = arith.constant 4608 : i32
      %c32_i32_121 = arith.constant 32 : i32
      %c6_i32_122 = arith.constant 6 : i32
      %c1_i32_123 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_120, %c32_i32_121, %c6_i32_122, %c1_i32_123) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_124 = arith.constant 4608 : i32
      %c32_i32_125 = arith.constant 32 : i32
      %c7_i32_126 = arith.constant 7 : i32
      %c1_i32_127 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_124, %c32_i32_125, %c7_i32_126, %c1_i32_127) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_128 = arith.constant 4608 : i32
      %c32_i32_129 = arith.constant 32 : i32
      %c8_i32_130 = arith.constant 8 : i32
      %c1_i32_131 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_128, %c32_i32_129, %c8_i32_130, %c1_i32_131) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_132 = arith.constant 4608 : i32
      %c32_i32_133 = arith.constant 32 : i32
      %c9_i32_134 = arith.constant 9 : i32
      %c1_i32_135 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_132, %c32_i32_133, %c9_i32_134, %c1_i32_135) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_136 = arith.constant 4608 : i32
      %c32_i32_137 = arith.constant 32 : i32
      %c10_i32_138 = arith.constant 10 : i32
      %c1_i32_139 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_136, %c32_i32_137, %c10_i32_138, %c1_i32_139) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_140 = arith.constant 4608 : i32
      %c32_i32_141 = arith.constant 32 : i32
      %c11_i32_142 = arith.constant 11 : i32
      %c1_i32_143 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_140, %c32_i32_141, %c11_i32_142, %c1_i32_143) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_144 = arith.constant 4608 : i32
      %c32_i32_145 = arith.constant 32 : i32
      %c12_i32_146 = arith.constant 12 : i32
      %c1_i32_147 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_144, %c32_i32_145, %c12_i32_146, %c1_i32_147) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_148 = arith.constant 4608 : i32
      %c32_i32_149 = arith.constant 32 : i32
      %c13_i32_150 = arith.constant 13 : i32
      %c1_i32_151 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_148, %c32_i32_149, %c13_i32_150, %c1_i32_151) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_152 = arith.constant 4608 : i32
      %c32_i32_153 = arith.constant 32 : i32
      %c14_i32_154 = arith.constant 14 : i32
      %c1_i32_155 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_152, %c32_i32_153, %c14_i32_154, %c1_i32_155) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_156 = arith.constant 4608 : i32
      %c32_i32_157 = arith.constant 32 : i32
      %c15_i32_158 = arith.constant 15 : i32
      %c1_i32_159 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_156, %c32_i32_157, %c15_i32_158, %c1_i32_159) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_160 = arith.constant 4608 : i32
      %c32_i32_161 = arith.constant 32 : i32
      %c16_i32_162 = arith.constant 16 : i32
      %c1_i32_163 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_160, %c32_i32_161, %c16_i32_162, %c1_i32_163) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_164 = arith.constant 4608 : i32
      %c32_i32_165 = arith.constant 32 : i32
      %c17_i32_166 = arith.constant 17 : i32
      %c1_i32_167 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_164, %c32_i32_165, %c17_i32_166, %c1_i32_167) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_168 = arith.constant 4608 : i32
      %c32_i32_169 = arith.constant 32 : i32
      %c18_i32_170 = arith.constant 18 : i32
      %c1_i32_171 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_168, %c32_i32_169, %c18_i32_170, %c1_i32_171) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_172 = arith.constant 4608 : i32
      %c32_i32_173 = arith.constant 32 : i32
      %c19_i32_174 = arith.constant 19 : i32
      %c1_i32_175 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_172, %c32_i32_173, %c19_i32_174, %c1_i32_175) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_176 = arith.constant 4608 : i32
      %c32_i32_177 = arith.constant 32 : i32
      %c20_i32_178 = arith.constant 20 : i32
      %c1_i32_179 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_176, %c32_i32_177, %c20_i32_178, %c1_i32_179) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_180 = arith.constant 4608 : i32
      %c32_i32_181 = arith.constant 32 : i32
      %c21_i32_182 = arith.constant 21 : i32
      %c1_i32_183 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_180, %c32_i32_181, %c21_i32_182, %c1_i32_183) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_184 = arith.constant 4608 : i32
      %c32_i32_185 = arith.constant 32 : i32
      %c22_i32_186 = arith.constant 22 : i32
      %c1_i32_187 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_184, %c32_i32_185, %c22_i32_186, %c1_i32_187) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_188 = arith.constant 4608 : i32
      %c32_i32_189 = arith.constant 32 : i32
      %c23_i32_190 = arith.constant 23 : i32
      %c1_i32_191 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_188, %c32_i32_189, %c23_i32_190, %c1_i32_191) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_192 = arith.constant 4608 : i32
      %c32_i32_193 = arith.constant 32 : i32
      %c24_i32_194 = arith.constant 24 : i32
      %c1_i32_195 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_192, %c32_i32_193, %c24_i32_194, %c1_i32_195) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_196 = arith.constant 4608 : i32
      %c32_i32_197 = arith.constant 32 : i32
      %c25_i32_198 = arith.constant 25 : i32
      %c1_i32_199 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_196, %c32_i32_197, %c25_i32_198, %c1_i32_199) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_200 = arith.constant 4608 : i32
      %c32_i32_201 = arith.constant 32 : i32
      %c26_i32_202 = arith.constant 26 : i32
      %c1_i32_203 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_200, %c32_i32_201, %c26_i32_202, %c1_i32_203) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_204 = arith.constant 4608 : i32
      %c32_i32_205 = arith.constant 32 : i32
      %c27_i32_206 = arith.constant 27 : i32
      %c1_i32_207 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_204, %c32_i32_205, %c27_i32_206, %c1_i32_207) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_208 = arith.constant 4608 : i32
      %c32_i32_209 = arith.constant 32 : i32
      %c28_i32_210 = arith.constant 28 : i32
      %c1_i32_211 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_208, %c32_i32_209, %c28_i32_210, %c1_i32_211) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_212 = arith.constant 4608 : i32
      %c32_i32_213 = arith.constant 32 : i32
      %c29_i32_214 = arith.constant 29 : i32
      %c1_i32_215 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_212, %c32_i32_213, %c29_i32_214, %c1_i32_215) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_216 = arith.constant 4608 : i32
      %c32_i32_217 = arith.constant 32 : i32
      %c30_i32_218 = arith.constant 30 : i32
      %c1_i32_219 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_216, %c32_i32_217, %c30_i32_218, %c1_i32_219) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_220 = arith.constant 4608 : i32
      %c32_i32_221 = arith.constant 32 : i32
      %c31_i32_222 = arith.constant 31 : i32
      %c1_i32_223 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main03_cons_buff_0, %in0_1_cons_buff_1, %of_add_v0_buff_0, %c4608_i32_220, %c32_i32_221, %c31_i32_222, %c1_i32_223) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_main03_cons_prod_lock, Release, 1)
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "scale.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_main04_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c512 = arith.constant 512 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c512 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c32_i32 = arith.constant 32 : i32
      %c0_i32 = arith.constant 0 : i32
      %c2_i32 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32, %c32_i32, %c0_i32, %c2_i32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_2 = arith.constant 4608 : i32
      %c32_i32_3 = arith.constant 32 : i32
      %c1_i32 = arith.constant 1 : i32
      %c2_i32_4 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_2, %c32_i32_3, %c1_i32, %c2_i32_4) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_5 = arith.constant 4608 : i32
      %c32_i32_6 = arith.constant 32 : i32
      %c2_i32_7 = arith.constant 2 : i32
      %c2_i32_8 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_5, %c32_i32_6, %c2_i32_7, %c2_i32_8) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_9 = arith.constant 4608 : i32
      %c32_i32_10 = arith.constant 32 : i32
      %c3_i32 = arith.constant 3 : i32
      %c2_i32_11 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_9, %c32_i32_10, %c3_i32, %c2_i32_11) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_12 = arith.constant 4608 : i32
      %c32_i32_13 = arith.constant 32 : i32
      %c4_i32 = arith.constant 4 : i32
      %c2_i32_14 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_12, %c32_i32_13, %c4_i32, %c2_i32_14) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_15 = arith.constant 4608 : i32
      %c32_i32_16 = arith.constant 32 : i32
      %c5_i32 = arith.constant 5 : i32
      %c2_i32_17 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_15, %c32_i32_16, %c5_i32, %c2_i32_17) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_18 = arith.constant 4608 : i32
      %c32_i32_19 = arith.constant 32 : i32
      %c6_i32 = arith.constant 6 : i32
      %c2_i32_20 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_18, %c32_i32_19, %c6_i32, %c2_i32_20) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_21 = arith.constant 4608 : i32
      %c32_i32_22 = arith.constant 32 : i32
      %c7_i32 = arith.constant 7 : i32
      %c2_i32_23 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_21, %c32_i32_22, %c7_i32, %c2_i32_23) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_24 = arith.constant 4608 : i32
      %c32_i32_25 = arith.constant 32 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2_i32_26 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_24, %c32_i32_25, %c8_i32, %c2_i32_26) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_27 = arith.constant 4608 : i32
      %c32_i32_28 = arith.constant 32 : i32
      %c9_i32 = arith.constant 9 : i32
      %c2_i32_29 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_27, %c32_i32_28, %c9_i32, %c2_i32_29) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_30 = arith.constant 4608 : i32
      %c32_i32_31 = arith.constant 32 : i32
      %c10_i32 = arith.constant 10 : i32
      %c2_i32_32 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_30, %c32_i32_31, %c10_i32, %c2_i32_32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_33 = arith.constant 4608 : i32
      %c32_i32_34 = arith.constant 32 : i32
      %c11_i32 = arith.constant 11 : i32
      %c2_i32_35 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_33, %c32_i32_34, %c11_i32, %c2_i32_35) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_36 = arith.constant 4608 : i32
      %c32_i32_37 = arith.constant 32 : i32
      %c12_i32 = arith.constant 12 : i32
      %c2_i32_38 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_36, %c32_i32_37, %c12_i32, %c2_i32_38) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_39 = arith.constant 4608 : i32
      %c32_i32_40 = arith.constant 32 : i32
      %c13_i32 = arith.constant 13 : i32
      %c2_i32_41 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_39, %c32_i32_40, %c13_i32, %c2_i32_41) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_42 = arith.constant 4608 : i32
      %c32_i32_43 = arith.constant 32 : i32
      %c14_i32 = arith.constant 14 : i32
      %c2_i32_44 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_42, %c32_i32_43, %c14_i32, %c2_i32_44) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_45 = arith.constant 4608 : i32
      %c32_i32_46 = arith.constant 32 : i32
      %c15_i32 = arith.constant 15 : i32
      %c2_i32_47 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_45, %c32_i32_46, %c15_i32, %c2_i32_47) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_48 = arith.constant 4608 : i32
      %c32_i32_49 = arith.constant 32 : i32
      %c16_i32 = arith.constant 16 : i32
      %c2_i32_50 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_48, %c32_i32_49, %c16_i32, %c2_i32_50) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_51 = arith.constant 4608 : i32
      %c32_i32_52 = arith.constant 32 : i32
      %c17_i32 = arith.constant 17 : i32
      %c2_i32_53 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_51, %c32_i32_52, %c17_i32, %c2_i32_53) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_54 = arith.constant 4608 : i32
      %c32_i32_55 = arith.constant 32 : i32
      %c18_i32 = arith.constant 18 : i32
      %c2_i32_56 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_54, %c32_i32_55, %c18_i32, %c2_i32_56) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_57 = arith.constant 4608 : i32
      %c32_i32_58 = arith.constant 32 : i32
      %c19_i32 = arith.constant 19 : i32
      %c2_i32_59 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_57, %c32_i32_58, %c19_i32, %c2_i32_59) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_60 = arith.constant 4608 : i32
      %c32_i32_61 = arith.constant 32 : i32
      %c20_i32 = arith.constant 20 : i32
      %c2_i32_62 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_60, %c32_i32_61, %c20_i32, %c2_i32_62) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_63 = arith.constant 4608 : i32
      %c32_i32_64 = arith.constant 32 : i32
      %c21_i32 = arith.constant 21 : i32
      %c2_i32_65 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_63, %c32_i32_64, %c21_i32, %c2_i32_65) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_66 = arith.constant 4608 : i32
      %c32_i32_67 = arith.constant 32 : i32
      %c22_i32 = arith.constant 22 : i32
      %c2_i32_68 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_66, %c32_i32_67, %c22_i32, %c2_i32_68) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_69 = arith.constant 4608 : i32
      %c32_i32_70 = arith.constant 32 : i32
      %c23_i32 = arith.constant 23 : i32
      %c2_i32_71 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_69, %c32_i32_70, %c23_i32, %c2_i32_71) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_72 = arith.constant 4608 : i32
      %c32_i32_73 = arith.constant 32 : i32
      %c24_i32 = arith.constant 24 : i32
      %c2_i32_74 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_72, %c32_i32_73, %c24_i32, %c2_i32_74) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_75 = arith.constant 4608 : i32
      %c32_i32_76 = arith.constant 32 : i32
      %c25_i32 = arith.constant 25 : i32
      %c2_i32_77 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_75, %c32_i32_76, %c25_i32, %c2_i32_77) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_78 = arith.constant 4608 : i32
      %c32_i32_79 = arith.constant 32 : i32
      %c26_i32 = arith.constant 26 : i32
      %c2_i32_80 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_78, %c32_i32_79, %c26_i32, %c2_i32_80) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_81 = arith.constant 4608 : i32
      %c32_i32_82 = arith.constant 32 : i32
      %c27_i32 = arith.constant 27 : i32
      %c2_i32_83 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_81, %c32_i32_82, %c27_i32, %c2_i32_83) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_84 = arith.constant 4608 : i32
      %c32_i32_85 = arith.constant 32 : i32
      %c28_i32 = arith.constant 28 : i32
      %c2_i32_86 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_84, %c32_i32_85, %c28_i32, %c2_i32_86) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_87 = arith.constant 4608 : i32
      %c32_i32_88 = arith.constant 32 : i32
      %c29_i32 = arith.constant 29 : i32
      %c2_i32_89 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_87, %c32_i32_88, %c29_i32, %c2_i32_89) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_90 = arith.constant 4608 : i32
      %c32_i32_91 = arith.constant 32 : i32
      %c30_i32 = arith.constant 30 : i32
      %c2_i32_92 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_90, %c32_i32_91, %c30_i32, %c2_i32_92) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_93 = arith.constant 4608 : i32
      %c32_i32_94 = arith.constant 32 : i32
      %c31_i32 = arith.constant 31 : i32
      %c2_i32_95 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_0, %of_add_w0_buff_0, %c4608_i32_93, %c32_i32_94, %c31_i32, %c2_i32_95) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_96 = arith.constant 4608 : i32
      %c32_i32_97 = arith.constant 32 : i32
      %c0_i32_98 = arith.constant 0 : i32
      %c2_i32_99 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_96, %c32_i32_97, %c0_i32_98, %c2_i32_99) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_100 = arith.constant 4608 : i32
      %c32_i32_101 = arith.constant 32 : i32
      %c1_i32_102 = arith.constant 1 : i32
      %c2_i32_103 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_100, %c32_i32_101, %c1_i32_102, %c2_i32_103) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_104 = arith.constant 4608 : i32
      %c32_i32_105 = arith.constant 32 : i32
      %c2_i32_106 = arith.constant 2 : i32
      %c2_i32_107 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_104, %c32_i32_105, %c2_i32_106, %c2_i32_107) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_108 = arith.constant 4608 : i32
      %c32_i32_109 = arith.constant 32 : i32
      %c3_i32_110 = arith.constant 3 : i32
      %c2_i32_111 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_108, %c32_i32_109, %c3_i32_110, %c2_i32_111) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_112 = arith.constant 4608 : i32
      %c32_i32_113 = arith.constant 32 : i32
      %c4_i32_114 = arith.constant 4 : i32
      %c2_i32_115 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_112, %c32_i32_113, %c4_i32_114, %c2_i32_115) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_116 = arith.constant 4608 : i32
      %c32_i32_117 = arith.constant 32 : i32
      %c5_i32_118 = arith.constant 5 : i32
      %c2_i32_119 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_116, %c32_i32_117, %c5_i32_118, %c2_i32_119) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_120 = arith.constant 4608 : i32
      %c32_i32_121 = arith.constant 32 : i32
      %c6_i32_122 = arith.constant 6 : i32
      %c2_i32_123 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_120, %c32_i32_121, %c6_i32_122, %c2_i32_123) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_124 = arith.constant 4608 : i32
      %c32_i32_125 = arith.constant 32 : i32
      %c7_i32_126 = arith.constant 7 : i32
      %c2_i32_127 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_124, %c32_i32_125, %c7_i32_126, %c2_i32_127) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_128 = arith.constant 4608 : i32
      %c32_i32_129 = arith.constant 32 : i32
      %c8_i32_130 = arith.constant 8 : i32
      %c2_i32_131 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_128, %c32_i32_129, %c8_i32_130, %c2_i32_131) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_132 = arith.constant 4608 : i32
      %c32_i32_133 = arith.constant 32 : i32
      %c9_i32_134 = arith.constant 9 : i32
      %c2_i32_135 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_132, %c32_i32_133, %c9_i32_134, %c2_i32_135) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_136 = arith.constant 4608 : i32
      %c32_i32_137 = arith.constant 32 : i32
      %c10_i32_138 = arith.constant 10 : i32
      %c2_i32_139 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_136, %c32_i32_137, %c10_i32_138, %c2_i32_139) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_140 = arith.constant 4608 : i32
      %c32_i32_141 = arith.constant 32 : i32
      %c11_i32_142 = arith.constant 11 : i32
      %c2_i32_143 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_140, %c32_i32_141, %c11_i32_142, %c2_i32_143) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_144 = arith.constant 4608 : i32
      %c32_i32_145 = arith.constant 32 : i32
      %c12_i32_146 = arith.constant 12 : i32
      %c2_i32_147 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_144, %c32_i32_145, %c12_i32_146, %c2_i32_147) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_148 = arith.constant 4608 : i32
      %c32_i32_149 = arith.constant 32 : i32
      %c13_i32_150 = arith.constant 13 : i32
      %c2_i32_151 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_148, %c32_i32_149, %c13_i32_150, %c2_i32_151) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_152 = arith.constant 4608 : i32
      %c32_i32_153 = arith.constant 32 : i32
      %c14_i32_154 = arith.constant 14 : i32
      %c2_i32_155 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_152, %c32_i32_153, %c14_i32_154, %c2_i32_155) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_156 = arith.constant 4608 : i32
      %c32_i32_157 = arith.constant 32 : i32
      %c15_i32_158 = arith.constant 15 : i32
      %c2_i32_159 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_156, %c32_i32_157, %c15_i32_158, %c2_i32_159) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_160 = arith.constant 4608 : i32
      %c32_i32_161 = arith.constant 32 : i32
      %c16_i32_162 = arith.constant 16 : i32
      %c2_i32_163 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_160, %c32_i32_161, %c16_i32_162, %c2_i32_163) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_164 = arith.constant 4608 : i32
      %c32_i32_165 = arith.constant 32 : i32
      %c17_i32_166 = arith.constant 17 : i32
      %c2_i32_167 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_164, %c32_i32_165, %c17_i32_166, %c2_i32_167) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_168 = arith.constant 4608 : i32
      %c32_i32_169 = arith.constant 32 : i32
      %c18_i32_170 = arith.constant 18 : i32
      %c2_i32_171 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_168, %c32_i32_169, %c18_i32_170, %c2_i32_171) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_172 = arith.constant 4608 : i32
      %c32_i32_173 = arith.constant 32 : i32
      %c19_i32_174 = arith.constant 19 : i32
      %c2_i32_175 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_172, %c32_i32_173, %c19_i32_174, %c2_i32_175) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_176 = arith.constant 4608 : i32
      %c32_i32_177 = arith.constant 32 : i32
      %c20_i32_178 = arith.constant 20 : i32
      %c2_i32_179 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_176, %c32_i32_177, %c20_i32_178, %c2_i32_179) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_180 = arith.constant 4608 : i32
      %c32_i32_181 = arith.constant 32 : i32
      %c21_i32_182 = arith.constant 21 : i32
      %c2_i32_183 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_180, %c32_i32_181, %c21_i32_182, %c2_i32_183) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_184 = arith.constant 4608 : i32
      %c32_i32_185 = arith.constant 32 : i32
      %c22_i32_186 = arith.constant 22 : i32
      %c2_i32_187 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_184, %c32_i32_185, %c22_i32_186, %c2_i32_187) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_188 = arith.constant 4608 : i32
      %c32_i32_189 = arith.constant 32 : i32
      %c23_i32_190 = arith.constant 23 : i32
      %c2_i32_191 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_188, %c32_i32_189, %c23_i32_190, %c2_i32_191) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_192 = arith.constant 4608 : i32
      %c32_i32_193 = arith.constant 32 : i32
      %c24_i32_194 = arith.constant 24 : i32
      %c2_i32_195 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_192, %c32_i32_193, %c24_i32_194, %c2_i32_195) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_196 = arith.constant 4608 : i32
      %c32_i32_197 = arith.constant 32 : i32
      %c25_i32_198 = arith.constant 25 : i32
      %c2_i32_199 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_196, %c32_i32_197, %c25_i32_198, %c2_i32_199) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_200 = arith.constant 4608 : i32
      %c32_i32_201 = arith.constant 32 : i32
      %c26_i32_202 = arith.constant 26 : i32
      %c2_i32_203 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_200, %c32_i32_201, %c26_i32_202, %c2_i32_203) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_204 = arith.constant 4608 : i32
      %c32_i32_205 = arith.constant 32 : i32
      %c27_i32_206 = arith.constant 27 : i32
      %c2_i32_207 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_204, %c32_i32_205, %c27_i32_206, %c2_i32_207) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_208 = arith.constant 4608 : i32
      %c32_i32_209 = arith.constant 32 : i32
      %c28_i32_210 = arith.constant 28 : i32
      %c2_i32_211 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_208, %c32_i32_209, %c28_i32_210, %c2_i32_211) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_212 = arith.constant 4608 : i32
      %c32_i32_213 = arith.constant 32 : i32
      %c29_i32_214 = arith.constant 29 : i32
      %c2_i32_215 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_212, %c32_i32_213, %c29_i32_214, %c2_i32_215) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_216 = arith.constant 4608 : i32
      %c32_i32_217 = arith.constant 32 : i32
      %c30_i32_218 = arith.constant 30 : i32
      %c2_i32_219 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_216, %c32_i32_217, %c30_i32_218, %c2_i32_219) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_220 = arith.constant 4608 : i32
      %c32_i32_221 = arith.constant 32 : i32
      %c31_i32_222 = arith.constant 31 : i32
      %c2_i32_223 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main04_cons_buff_0, %in0_2_cons_buff_1, %of_add_w0_buff_0, %c4608_i32_220, %c32_i32_221, %c31_i32_222, %c2_i32_223) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_main04_cons_prod_lock, Release, 1)
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "scale.o"}
    %core_1_5 = aie.core(%tile_1_5) {
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
      aie.use_lock(%of_add_u0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_uv0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @add_kernel(%of_add_u0_buff_0, %of_add_v0_cons_buff_0, %of_add_uv0_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_add_uv0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, Release, 1)
      aie.use_lock(%of_add_v0_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
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
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_add_w0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_uv0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add2main0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @add_kernel(%of_add_w0_cons_buff_0, %of_add_uv0_buff_0, %of_add2main0_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_add2main0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_cons_prod_lock, Release, 1)
      aie.use_lock(%of_add_uv0_prod_lock, Release, 1)
      %4 = arith.addi %2, %c1_1 : index
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
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_main00_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c16384 = arith.constant 16384 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_add2main0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_join_real0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c0_i32 = arith.constant 0 : i32
      func.call @main_kernel(%of_add2main0_0_cons_buff_0, %of_in_main00_cons_buff_0, %of_join_real0_buff_0, %c4608_i32, %c0_i32) : (memref<4608xbf16>, memref<4610xbf16>, memref<2304xbf16>, i32, i32) -> ()
      aie.use_lock(%of_join_real0_cons_lock, Release, 1)
      aie.use_lock(%of_add2main0_0_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_main00_cons_prod_lock, Release, 1)
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "kernels.a"}
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_main01_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c16384 = arith.constant 16384 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_add2main0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_join_imag0_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c1_i32 = arith.constant 1 : i32
      func.call @main_kernel(%of_add2main0_1_cons_buff_0, %of_in_main01_cons_buff_0, %of_join_imag0_buff_0, %c4608_i32, %c1_i32) : (memref<4608xbf16>, memref<4610xbf16>, memref<2304xbf16>, i32, i32) -> ()
      aie.use_lock(%of_join_imag0_cons_lock, Release, 1)
      aie.use_lock(%of_add2main0_1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_main01_cons_prod_lock, Release, 1)
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "kernels.a"}
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_main12_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c512 = arith.constant 512 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c512 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c32_i32 = arith.constant 32 : i32
      %c0_i32 = arith.constant 0 : i32
      %c0_i32_2 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32, %c32_i32, %c0_i32, %c0_i32_2) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_3 = arith.constant 4608 : i32
      %c32_i32_4 = arith.constant 32 : i32
      %c1_i32 = arith.constant 1 : i32
      %c0_i32_5 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_3, %c32_i32_4, %c1_i32, %c0_i32_5) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_6 = arith.constant 4608 : i32
      %c32_i32_7 = arith.constant 32 : i32
      %c2_i32 = arith.constant 2 : i32
      %c0_i32_8 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_6, %c32_i32_7, %c2_i32, %c0_i32_8) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_9 = arith.constant 4608 : i32
      %c32_i32_10 = arith.constant 32 : i32
      %c3_i32 = arith.constant 3 : i32
      %c0_i32_11 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_9, %c32_i32_10, %c3_i32, %c0_i32_11) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_12 = arith.constant 4608 : i32
      %c32_i32_13 = arith.constant 32 : i32
      %c4_i32 = arith.constant 4 : i32
      %c0_i32_14 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_12, %c32_i32_13, %c4_i32, %c0_i32_14) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_15 = arith.constant 4608 : i32
      %c32_i32_16 = arith.constant 32 : i32
      %c5_i32 = arith.constant 5 : i32
      %c0_i32_17 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_15, %c32_i32_16, %c5_i32, %c0_i32_17) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_18 = arith.constant 4608 : i32
      %c32_i32_19 = arith.constant 32 : i32
      %c6_i32 = arith.constant 6 : i32
      %c0_i32_20 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_18, %c32_i32_19, %c6_i32, %c0_i32_20) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_21 = arith.constant 4608 : i32
      %c32_i32_22 = arith.constant 32 : i32
      %c7_i32 = arith.constant 7 : i32
      %c0_i32_23 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_21, %c32_i32_22, %c7_i32, %c0_i32_23) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_24 = arith.constant 4608 : i32
      %c32_i32_25 = arith.constant 32 : i32
      %c8_i32 = arith.constant 8 : i32
      %c0_i32_26 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_24, %c32_i32_25, %c8_i32, %c0_i32_26) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_27 = arith.constant 4608 : i32
      %c32_i32_28 = arith.constant 32 : i32
      %c9_i32 = arith.constant 9 : i32
      %c0_i32_29 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_27, %c32_i32_28, %c9_i32, %c0_i32_29) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_30 = arith.constant 4608 : i32
      %c32_i32_31 = arith.constant 32 : i32
      %c10_i32 = arith.constant 10 : i32
      %c0_i32_32 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_30, %c32_i32_31, %c10_i32, %c0_i32_32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_33 = arith.constant 4608 : i32
      %c32_i32_34 = arith.constant 32 : i32
      %c11_i32 = arith.constant 11 : i32
      %c0_i32_35 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_33, %c32_i32_34, %c11_i32, %c0_i32_35) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_36 = arith.constant 4608 : i32
      %c32_i32_37 = arith.constant 32 : i32
      %c12_i32 = arith.constant 12 : i32
      %c0_i32_38 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_36, %c32_i32_37, %c12_i32, %c0_i32_38) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_39 = arith.constant 4608 : i32
      %c32_i32_40 = arith.constant 32 : i32
      %c13_i32 = arith.constant 13 : i32
      %c0_i32_41 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_39, %c32_i32_40, %c13_i32, %c0_i32_41) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_42 = arith.constant 4608 : i32
      %c32_i32_43 = arith.constant 32 : i32
      %c14_i32 = arith.constant 14 : i32
      %c0_i32_44 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_42, %c32_i32_43, %c14_i32, %c0_i32_44) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_45 = arith.constant 4608 : i32
      %c32_i32_46 = arith.constant 32 : i32
      %c15_i32 = arith.constant 15 : i32
      %c0_i32_47 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_45, %c32_i32_46, %c15_i32, %c0_i32_47) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_48 = arith.constant 4608 : i32
      %c32_i32_49 = arith.constant 32 : i32
      %c16_i32 = arith.constant 16 : i32
      %c0_i32_50 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_48, %c32_i32_49, %c16_i32, %c0_i32_50) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_51 = arith.constant 4608 : i32
      %c32_i32_52 = arith.constant 32 : i32
      %c17_i32 = arith.constant 17 : i32
      %c0_i32_53 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_51, %c32_i32_52, %c17_i32, %c0_i32_53) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_54 = arith.constant 4608 : i32
      %c32_i32_55 = arith.constant 32 : i32
      %c18_i32 = arith.constant 18 : i32
      %c0_i32_56 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_54, %c32_i32_55, %c18_i32, %c0_i32_56) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_57 = arith.constant 4608 : i32
      %c32_i32_58 = arith.constant 32 : i32
      %c19_i32 = arith.constant 19 : i32
      %c0_i32_59 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_57, %c32_i32_58, %c19_i32, %c0_i32_59) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_60 = arith.constant 4608 : i32
      %c32_i32_61 = arith.constant 32 : i32
      %c20_i32 = arith.constant 20 : i32
      %c0_i32_62 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_60, %c32_i32_61, %c20_i32, %c0_i32_62) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_63 = arith.constant 4608 : i32
      %c32_i32_64 = arith.constant 32 : i32
      %c21_i32 = arith.constant 21 : i32
      %c0_i32_65 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_63, %c32_i32_64, %c21_i32, %c0_i32_65) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_66 = arith.constant 4608 : i32
      %c32_i32_67 = arith.constant 32 : i32
      %c22_i32 = arith.constant 22 : i32
      %c0_i32_68 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_66, %c32_i32_67, %c22_i32, %c0_i32_68) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_69 = arith.constant 4608 : i32
      %c32_i32_70 = arith.constant 32 : i32
      %c23_i32 = arith.constant 23 : i32
      %c0_i32_71 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_69, %c32_i32_70, %c23_i32, %c0_i32_71) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_72 = arith.constant 4608 : i32
      %c32_i32_73 = arith.constant 32 : i32
      %c24_i32 = arith.constant 24 : i32
      %c0_i32_74 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_72, %c32_i32_73, %c24_i32, %c0_i32_74) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_75 = arith.constant 4608 : i32
      %c32_i32_76 = arith.constant 32 : i32
      %c25_i32 = arith.constant 25 : i32
      %c0_i32_77 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_75, %c32_i32_76, %c25_i32, %c0_i32_77) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_78 = arith.constant 4608 : i32
      %c32_i32_79 = arith.constant 32 : i32
      %c26_i32 = arith.constant 26 : i32
      %c0_i32_80 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_78, %c32_i32_79, %c26_i32, %c0_i32_80) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_81 = arith.constant 4608 : i32
      %c32_i32_82 = arith.constant 32 : i32
      %c27_i32 = arith.constant 27 : i32
      %c0_i32_83 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_81, %c32_i32_82, %c27_i32, %c0_i32_83) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_84 = arith.constant 4608 : i32
      %c32_i32_85 = arith.constant 32 : i32
      %c28_i32 = arith.constant 28 : i32
      %c0_i32_86 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_84, %c32_i32_85, %c28_i32, %c0_i32_86) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_87 = arith.constant 4608 : i32
      %c32_i32_88 = arith.constant 32 : i32
      %c29_i32 = arith.constant 29 : i32
      %c0_i32_89 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_87, %c32_i32_88, %c29_i32, %c0_i32_89) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_90 = arith.constant 4608 : i32
      %c32_i32_91 = arith.constant 32 : i32
      %c30_i32 = arith.constant 30 : i32
      %c0_i32_92 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_90, %c32_i32_91, %c30_i32, %c0_i32_92) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_93 = arith.constant 4608 : i32
      %c32_i32_94 = arith.constant 32 : i32
      %c31_i32 = arith.constant 31 : i32
      %c0_i32_95 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_0, %of_add_u1_buff_0, %c4608_i32_93, %c32_i32_94, %c31_i32, %c0_i32_95) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_96 = arith.constant 4608 : i32
      %c32_i32_97 = arith.constant 32 : i32
      %c0_i32_98 = arith.constant 0 : i32
      %c0_i32_99 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_96, %c32_i32_97, %c0_i32_98, %c0_i32_99) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_100 = arith.constant 4608 : i32
      %c32_i32_101 = arith.constant 32 : i32
      %c1_i32_102 = arith.constant 1 : i32
      %c0_i32_103 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_100, %c32_i32_101, %c1_i32_102, %c0_i32_103) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_104 = arith.constant 4608 : i32
      %c32_i32_105 = arith.constant 32 : i32
      %c2_i32_106 = arith.constant 2 : i32
      %c0_i32_107 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_104, %c32_i32_105, %c2_i32_106, %c0_i32_107) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_108 = arith.constant 4608 : i32
      %c32_i32_109 = arith.constant 32 : i32
      %c3_i32_110 = arith.constant 3 : i32
      %c0_i32_111 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_108, %c32_i32_109, %c3_i32_110, %c0_i32_111) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_112 = arith.constant 4608 : i32
      %c32_i32_113 = arith.constant 32 : i32
      %c4_i32_114 = arith.constant 4 : i32
      %c0_i32_115 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_112, %c32_i32_113, %c4_i32_114, %c0_i32_115) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_116 = arith.constant 4608 : i32
      %c32_i32_117 = arith.constant 32 : i32
      %c5_i32_118 = arith.constant 5 : i32
      %c0_i32_119 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_116, %c32_i32_117, %c5_i32_118, %c0_i32_119) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_120 = arith.constant 4608 : i32
      %c32_i32_121 = arith.constant 32 : i32
      %c6_i32_122 = arith.constant 6 : i32
      %c0_i32_123 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_120, %c32_i32_121, %c6_i32_122, %c0_i32_123) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_124 = arith.constant 4608 : i32
      %c32_i32_125 = arith.constant 32 : i32
      %c7_i32_126 = arith.constant 7 : i32
      %c0_i32_127 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_124, %c32_i32_125, %c7_i32_126, %c0_i32_127) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_128 = arith.constant 4608 : i32
      %c32_i32_129 = arith.constant 32 : i32
      %c8_i32_130 = arith.constant 8 : i32
      %c0_i32_131 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_128, %c32_i32_129, %c8_i32_130, %c0_i32_131) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_132 = arith.constant 4608 : i32
      %c32_i32_133 = arith.constant 32 : i32
      %c9_i32_134 = arith.constant 9 : i32
      %c0_i32_135 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_132, %c32_i32_133, %c9_i32_134, %c0_i32_135) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_136 = arith.constant 4608 : i32
      %c32_i32_137 = arith.constant 32 : i32
      %c10_i32_138 = arith.constant 10 : i32
      %c0_i32_139 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_136, %c32_i32_137, %c10_i32_138, %c0_i32_139) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_140 = arith.constant 4608 : i32
      %c32_i32_141 = arith.constant 32 : i32
      %c11_i32_142 = arith.constant 11 : i32
      %c0_i32_143 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_140, %c32_i32_141, %c11_i32_142, %c0_i32_143) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_144 = arith.constant 4608 : i32
      %c32_i32_145 = arith.constant 32 : i32
      %c12_i32_146 = arith.constant 12 : i32
      %c0_i32_147 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_144, %c32_i32_145, %c12_i32_146, %c0_i32_147) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_148 = arith.constant 4608 : i32
      %c32_i32_149 = arith.constant 32 : i32
      %c13_i32_150 = arith.constant 13 : i32
      %c0_i32_151 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_148, %c32_i32_149, %c13_i32_150, %c0_i32_151) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_152 = arith.constant 4608 : i32
      %c32_i32_153 = arith.constant 32 : i32
      %c14_i32_154 = arith.constant 14 : i32
      %c0_i32_155 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_152, %c32_i32_153, %c14_i32_154, %c0_i32_155) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_156 = arith.constant 4608 : i32
      %c32_i32_157 = arith.constant 32 : i32
      %c15_i32_158 = arith.constant 15 : i32
      %c0_i32_159 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_156, %c32_i32_157, %c15_i32_158, %c0_i32_159) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_160 = arith.constant 4608 : i32
      %c32_i32_161 = arith.constant 32 : i32
      %c16_i32_162 = arith.constant 16 : i32
      %c0_i32_163 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_160, %c32_i32_161, %c16_i32_162, %c0_i32_163) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_164 = arith.constant 4608 : i32
      %c32_i32_165 = arith.constant 32 : i32
      %c17_i32_166 = arith.constant 17 : i32
      %c0_i32_167 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_164, %c32_i32_165, %c17_i32_166, %c0_i32_167) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_168 = arith.constant 4608 : i32
      %c32_i32_169 = arith.constant 32 : i32
      %c18_i32_170 = arith.constant 18 : i32
      %c0_i32_171 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_168, %c32_i32_169, %c18_i32_170, %c0_i32_171) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_172 = arith.constant 4608 : i32
      %c32_i32_173 = arith.constant 32 : i32
      %c19_i32_174 = arith.constant 19 : i32
      %c0_i32_175 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_172, %c32_i32_173, %c19_i32_174, %c0_i32_175) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_176 = arith.constant 4608 : i32
      %c32_i32_177 = arith.constant 32 : i32
      %c20_i32_178 = arith.constant 20 : i32
      %c0_i32_179 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_176, %c32_i32_177, %c20_i32_178, %c0_i32_179) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_180 = arith.constant 4608 : i32
      %c32_i32_181 = arith.constant 32 : i32
      %c21_i32_182 = arith.constant 21 : i32
      %c0_i32_183 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_180, %c32_i32_181, %c21_i32_182, %c0_i32_183) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_184 = arith.constant 4608 : i32
      %c32_i32_185 = arith.constant 32 : i32
      %c22_i32_186 = arith.constant 22 : i32
      %c0_i32_187 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_184, %c32_i32_185, %c22_i32_186, %c0_i32_187) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_188 = arith.constant 4608 : i32
      %c32_i32_189 = arith.constant 32 : i32
      %c23_i32_190 = arith.constant 23 : i32
      %c0_i32_191 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_188, %c32_i32_189, %c23_i32_190, %c0_i32_191) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_192 = arith.constant 4608 : i32
      %c32_i32_193 = arith.constant 32 : i32
      %c24_i32_194 = arith.constant 24 : i32
      %c0_i32_195 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_192, %c32_i32_193, %c24_i32_194, %c0_i32_195) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_196 = arith.constant 4608 : i32
      %c32_i32_197 = arith.constant 32 : i32
      %c25_i32_198 = arith.constant 25 : i32
      %c0_i32_199 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_196, %c32_i32_197, %c25_i32_198, %c0_i32_199) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_200 = arith.constant 4608 : i32
      %c32_i32_201 = arith.constant 32 : i32
      %c26_i32_202 = arith.constant 26 : i32
      %c0_i32_203 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_200, %c32_i32_201, %c26_i32_202, %c0_i32_203) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_204 = arith.constant 4608 : i32
      %c32_i32_205 = arith.constant 32 : i32
      %c27_i32_206 = arith.constant 27 : i32
      %c0_i32_207 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_204, %c32_i32_205, %c27_i32_206, %c0_i32_207) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_208 = arith.constant 4608 : i32
      %c32_i32_209 = arith.constant 32 : i32
      %c28_i32_210 = arith.constant 28 : i32
      %c0_i32_211 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_208, %c32_i32_209, %c28_i32_210, %c0_i32_211) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_212 = arith.constant 4608 : i32
      %c32_i32_213 = arith.constant 32 : i32
      %c29_i32_214 = arith.constant 29 : i32
      %c0_i32_215 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_212, %c32_i32_213, %c29_i32_214, %c0_i32_215) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_216 = arith.constant 4608 : i32
      %c32_i32_217 = arith.constant 32 : i32
      %c30_i32_218 = arith.constant 30 : i32
      %c0_i32_219 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_216, %c32_i32_217, %c30_i32_218, %c0_i32_219) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_220 = arith.constant 4608 : i32
      %c32_i32_221 = arith.constant 32 : i32
      %c31_i32_222 = arith.constant 31 : i32
      %c0_i32_223 = arith.constant 0 : i32
      func.call @baseline_scale(%of_in_main12_cons_buff_0, %in0_3_cons_buff_1, %of_add_u1_buff_0, %c4608_i32_220, %c32_i32_221, %c31_i32_222, %c0_i32_223) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_main12_cons_prod_lock, Release, 1)
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "scale.o"}
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_main13_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c512 = arith.constant 512 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c512 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c32_i32 = arith.constant 32 : i32
      %c0_i32 = arith.constant 0 : i32
      %c1_i32 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32, %c32_i32, %c0_i32, %c1_i32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_2 = arith.constant 4608 : i32
      %c32_i32_3 = arith.constant 32 : i32
      %c1_i32_4 = arith.constant 1 : i32
      %c1_i32_5 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_2, %c32_i32_3, %c1_i32_4, %c1_i32_5) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_6 = arith.constant 4608 : i32
      %c32_i32_7 = arith.constant 32 : i32
      %c2_i32 = arith.constant 2 : i32
      %c1_i32_8 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_6, %c32_i32_7, %c2_i32, %c1_i32_8) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_9 = arith.constant 4608 : i32
      %c32_i32_10 = arith.constant 32 : i32
      %c3_i32 = arith.constant 3 : i32
      %c1_i32_11 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_9, %c32_i32_10, %c3_i32, %c1_i32_11) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_12 = arith.constant 4608 : i32
      %c32_i32_13 = arith.constant 32 : i32
      %c4_i32 = arith.constant 4 : i32
      %c1_i32_14 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_12, %c32_i32_13, %c4_i32, %c1_i32_14) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_15 = arith.constant 4608 : i32
      %c32_i32_16 = arith.constant 32 : i32
      %c5_i32 = arith.constant 5 : i32
      %c1_i32_17 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_15, %c32_i32_16, %c5_i32, %c1_i32_17) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_18 = arith.constant 4608 : i32
      %c32_i32_19 = arith.constant 32 : i32
      %c6_i32 = arith.constant 6 : i32
      %c1_i32_20 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_18, %c32_i32_19, %c6_i32, %c1_i32_20) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_21 = arith.constant 4608 : i32
      %c32_i32_22 = arith.constant 32 : i32
      %c7_i32 = arith.constant 7 : i32
      %c1_i32_23 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_21, %c32_i32_22, %c7_i32, %c1_i32_23) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_24 = arith.constant 4608 : i32
      %c32_i32_25 = arith.constant 32 : i32
      %c8_i32 = arith.constant 8 : i32
      %c1_i32_26 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_24, %c32_i32_25, %c8_i32, %c1_i32_26) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_27 = arith.constant 4608 : i32
      %c32_i32_28 = arith.constant 32 : i32
      %c9_i32 = arith.constant 9 : i32
      %c1_i32_29 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_27, %c32_i32_28, %c9_i32, %c1_i32_29) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_30 = arith.constant 4608 : i32
      %c32_i32_31 = arith.constant 32 : i32
      %c10_i32 = arith.constant 10 : i32
      %c1_i32_32 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_30, %c32_i32_31, %c10_i32, %c1_i32_32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_33 = arith.constant 4608 : i32
      %c32_i32_34 = arith.constant 32 : i32
      %c11_i32 = arith.constant 11 : i32
      %c1_i32_35 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_33, %c32_i32_34, %c11_i32, %c1_i32_35) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_36 = arith.constant 4608 : i32
      %c32_i32_37 = arith.constant 32 : i32
      %c12_i32 = arith.constant 12 : i32
      %c1_i32_38 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_36, %c32_i32_37, %c12_i32, %c1_i32_38) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_39 = arith.constant 4608 : i32
      %c32_i32_40 = arith.constant 32 : i32
      %c13_i32 = arith.constant 13 : i32
      %c1_i32_41 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_39, %c32_i32_40, %c13_i32, %c1_i32_41) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_42 = arith.constant 4608 : i32
      %c32_i32_43 = arith.constant 32 : i32
      %c14_i32 = arith.constant 14 : i32
      %c1_i32_44 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_42, %c32_i32_43, %c14_i32, %c1_i32_44) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_45 = arith.constant 4608 : i32
      %c32_i32_46 = arith.constant 32 : i32
      %c15_i32 = arith.constant 15 : i32
      %c1_i32_47 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_45, %c32_i32_46, %c15_i32, %c1_i32_47) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_48 = arith.constant 4608 : i32
      %c32_i32_49 = arith.constant 32 : i32
      %c16_i32 = arith.constant 16 : i32
      %c1_i32_50 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_48, %c32_i32_49, %c16_i32, %c1_i32_50) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_51 = arith.constant 4608 : i32
      %c32_i32_52 = arith.constant 32 : i32
      %c17_i32 = arith.constant 17 : i32
      %c1_i32_53 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_51, %c32_i32_52, %c17_i32, %c1_i32_53) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_54 = arith.constant 4608 : i32
      %c32_i32_55 = arith.constant 32 : i32
      %c18_i32 = arith.constant 18 : i32
      %c1_i32_56 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_54, %c32_i32_55, %c18_i32, %c1_i32_56) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_57 = arith.constant 4608 : i32
      %c32_i32_58 = arith.constant 32 : i32
      %c19_i32 = arith.constant 19 : i32
      %c1_i32_59 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_57, %c32_i32_58, %c19_i32, %c1_i32_59) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_60 = arith.constant 4608 : i32
      %c32_i32_61 = arith.constant 32 : i32
      %c20_i32 = arith.constant 20 : i32
      %c1_i32_62 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_60, %c32_i32_61, %c20_i32, %c1_i32_62) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_63 = arith.constant 4608 : i32
      %c32_i32_64 = arith.constant 32 : i32
      %c21_i32 = arith.constant 21 : i32
      %c1_i32_65 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_63, %c32_i32_64, %c21_i32, %c1_i32_65) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_66 = arith.constant 4608 : i32
      %c32_i32_67 = arith.constant 32 : i32
      %c22_i32 = arith.constant 22 : i32
      %c1_i32_68 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_66, %c32_i32_67, %c22_i32, %c1_i32_68) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_69 = arith.constant 4608 : i32
      %c32_i32_70 = arith.constant 32 : i32
      %c23_i32 = arith.constant 23 : i32
      %c1_i32_71 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_69, %c32_i32_70, %c23_i32, %c1_i32_71) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_72 = arith.constant 4608 : i32
      %c32_i32_73 = arith.constant 32 : i32
      %c24_i32 = arith.constant 24 : i32
      %c1_i32_74 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_72, %c32_i32_73, %c24_i32, %c1_i32_74) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_75 = arith.constant 4608 : i32
      %c32_i32_76 = arith.constant 32 : i32
      %c25_i32 = arith.constant 25 : i32
      %c1_i32_77 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_75, %c32_i32_76, %c25_i32, %c1_i32_77) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_78 = arith.constant 4608 : i32
      %c32_i32_79 = arith.constant 32 : i32
      %c26_i32 = arith.constant 26 : i32
      %c1_i32_80 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_78, %c32_i32_79, %c26_i32, %c1_i32_80) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_81 = arith.constant 4608 : i32
      %c32_i32_82 = arith.constant 32 : i32
      %c27_i32 = arith.constant 27 : i32
      %c1_i32_83 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_81, %c32_i32_82, %c27_i32, %c1_i32_83) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_84 = arith.constant 4608 : i32
      %c32_i32_85 = arith.constant 32 : i32
      %c28_i32 = arith.constant 28 : i32
      %c1_i32_86 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_84, %c32_i32_85, %c28_i32, %c1_i32_86) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_87 = arith.constant 4608 : i32
      %c32_i32_88 = arith.constant 32 : i32
      %c29_i32 = arith.constant 29 : i32
      %c1_i32_89 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_87, %c32_i32_88, %c29_i32, %c1_i32_89) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_90 = arith.constant 4608 : i32
      %c32_i32_91 = arith.constant 32 : i32
      %c30_i32 = arith.constant 30 : i32
      %c1_i32_92 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_90, %c32_i32_91, %c30_i32, %c1_i32_92) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_93 = arith.constant 4608 : i32
      %c32_i32_94 = arith.constant 32 : i32
      %c31_i32 = arith.constant 31 : i32
      %c1_i32_95 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_0, %of_add_v1_buff_0, %c4608_i32_93, %c32_i32_94, %c31_i32, %c1_i32_95) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_96 = arith.constant 4608 : i32
      %c32_i32_97 = arith.constant 32 : i32
      %c0_i32_98 = arith.constant 0 : i32
      %c1_i32_99 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_96, %c32_i32_97, %c0_i32_98, %c1_i32_99) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_100 = arith.constant 4608 : i32
      %c32_i32_101 = arith.constant 32 : i32
      %c1_i32_102 = arith.constant 1 : i32
      %c1_i32_103 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_100, %c32_i32_101, %c1_i32_102, %c1_i32_103) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_104 = arith.constant 4608 : i32
      %c32_i32_105 = arith.constant 32 : i32
      %c2_i32_106 = arith.constant 2 : i32
      %c1_i32_107 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_104, %c32_i32_105, %c2_i32_106, %c1_i32_107) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_108 = arith.constant 4608 : i32
      %c32_i32_109 = arith.constant 32 : i32
      %c3_i32_110 = arith.constant 3 : i32
      %c1_i32_111 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_108, %c32_i32_109, %c3_i32_110, %c1_i32_111) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_112 = arith.constant 4608 : i32
      %c32_i32_113 = arith.constant 32 : i32
      %c4_i32_114 = arith.constant 4 : i32
      %c1_i32_115 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_112, %c32_i32_113, %c4_i32_114, %c1_i32_115) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_116 = arith.constant 4608 : i32
      %c32_i32_117 = arith.constant 32 : i32
      %c5_i32_118 = arith.constant 5 : i32
      %c1_i32_119 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_116, %c32_i32_117, %c5_i32_118, %c1_i32_119) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_120 = arith.constant 4608 : i32
      %c32_i32_121 = arith.constant 32 : i32
      %c6_i32_122 = arith.constant 6 : i32
      %c1_i32_123 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_120, %c32_i32_121, %c6_i32_122, %c1_i32_123) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_124 = arith.constant 4608 : i32
      %c32_i32_125 = arith.constant 32 : i32
      %c7_i32_126 = arith.constant 7 : i32
      %c1_i32_127 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_124, %c32_i32_125, %c7_i32_126, %c1_i32_127) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_128 = arith.constant 4608 : i32
      %c32_i32_129 = arith.constant 32 : i32
      %c8_i32_130 = arith.constant 8 : i32
      %c1_i32_131 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_128, %c32_i32_129, %c8_i32_130, %c1_i32_131) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_132 = arith.constant 4608 : i32
      %c32_i32_133 = arith.constant 32 : i32
      %c9_i32_134 = arith.constant 9 : i32
      %c1_i32_135 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_132, %c32_i32_133, %c9_i32_134, %c1_i32_135) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_136 = arith.constant 4608 : i32
      %c32_i32_137 = arith.constant 32 : i32
      %c10_i32_138 = arith.constant 10 : i32
      %c1_i32_139 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_136, %c32_i32_137, %c10_i32_138, %c1_i32_139) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_140 = arith.constant 4608 : i32
      %c32_i32_141 = arith.constant 32 : i32
      %c11_i32_142 = arith.constant 11 : i32
      %c1_i32_143 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_140, %c32_i32_141, %c11_i32_142, %c1_i32_143) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_144 = arith.constant 4608 : i32
      %c32_i32_145 = arith.constant 32 : i32
      %c12_i32_146 = arith.constant 12 : i32
      %c1_i32_147 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_144, %c32_i32_145, %c12_i32_146, %c1_i32_147) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_148 = arith.constant 4608 : i32
      %c32_i32_149 = arith.constant 32 : i32
      %c13_i32_150 = arith.constant 13 : i32
      %c1_i32_151 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_148, %c32_i32_149, %c13_i32_150, %c1_i32_151) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_152 = arith.constant 4608 : i32
      %c32_i32_153 = arith.constant 32 : i32
      %c14_i32_154 = arith.constant 14 : i32
      %c1_i32_155 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_152, %c32_i32_153, %c14_i32_154, %c1_i32_155) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_156 = arith.constant 4608 : i32
      %c32_i32_157 = arith.constant 32 : i32
      %c15_i32_158 = arith.constant 15 : i32
      %c1_i32_159 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_156, %c32_i32_157, %c15_i32_158, %c1_i32_159) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_160 = arith.constant 4608 : i32
      %c32_i32_161 = arith.constant 32 : i32
      %c16_i32_162 = arith.constant 16 : i32
      %c1_i32_163 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_160, %c32_i32_161, %c16_i32_162, %c1_i32_163) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_164 = arith.constant 4608 : i32
      %c32_i32_165 = arith.constant 32 : i32
      %c17_i32_166 = arith.constant 17 : i32
      %c1_i32_167 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_164, %c32_i32_165, %c17_i32_166, %c1_i32_167) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_168 = arith.constant 4608 : i32
      %c32_i32_169 = arith.constant 32 : i32
      %c18_i32_170 = arith.constant 18 : i32
      %c1_i32_171 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_168, %c32_i32_169, %c18_i32_170, %c1_i32_171) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_172 = arith.constant 4608 : i32
      %c32_i32_173 = arith.constant 32 : i32
      %c19_i32_174 = arith.constant 19 : i32
      %c1_i32_175 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_172, %c32_i32_173, %c19_i32_174, %c1_i32_175) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_176 = arith.constant 4608 : i32
      %c32_i32_177 = arith.constant 32 : i32
      %c20_i32_178 = arith.constant 20 : i32
      %c1_i32_179 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_176, %c32_i32_177, %c20_i32_178, %c1_i32_179) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_180 = arith.constant 4608 : i32
      %c32_i32_181 = arith.constant 32 : i32
      %c21_i32_182 = arith.constant 21 : i32
      %c1_i32_183 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_180, %c32_i32_181, %c21_i32_182, %c1_i32_183) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_184 = arith.constant 4608 : i32
      %c32_i32_185 = arith.constant 32 : i32
      %c22_i32_186 = arith.constant 22 : i32
      %c1_i32_187 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_184, %c32_i32_185, %c22_i32_186, %c1_i32_187) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_188 = arith.constant 4608 : i32
      %c32_i32_189 = arith.constant 32 : i32
      %c23_i32_190 = arith.constant 23 : i32
      %c1_i32_191 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_188, %c32_i32_189, %c23_i32_190, %c1_i32_191) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_192 = arith.constant 4608 : i32
      %c32_i32_193 = arith.constant 32 : i32
      %c24_i32_194 = arith.constant 24 : i32
      %c1_i32_195 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_192, %c32_i32_193, %c24_i32_194, %c1_i32_195) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_196 = arith.constant 4608 : i32
      %c32_i32_197 = arith.constant 32 : i32
      %c25_i32_198 = arith.constant 25 : i32
      %c1_i32_199 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_196, %c32_i32_197, %c25_i32_198, %c1_i32_199) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_200 = arith.constant 4608 : i32
      %c32_i32_201 = arith.constant 32 : i32
      %c26_i32_202 = arith.constant 26 : i32
      %c1_i32_203 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_200, %c32_i32_201, %c26_i32_202, %c1_i32_203) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_204 = arith.constant 4608 : i32
      %c32_i32_205 = arith.constant 32 : i32
      %c27_i32_206 = arith.constant 27 : i32
      %c1_i32_207 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_204, %c32_i32_205, %c27_i32_206, %c1_i32_207) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_208 = arith.constant 4608 : i32
      %c32_i32_209 = arith.constant 32 : i32
      %c28_i32_210 = arith.constant 28 : i32
      %c1_i32_211 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_208, %c32_i32_209, %c28_i32_210, %c1_i32_211) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_212 = arith.constant 4608 : i32
      %c32_i32_213 = arith.constant 32 : i32
      %c29_i32_214 = arith.constant 29 : i32
      %c1_i32_215 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_212, %c32_i32_213, %c29_i32_214, %c1_i32_215) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_216 = arith.constant 4608 : i32
      %c32_i32_217 = arith.constant 32 : i32
      %c30_i32_218 = arith.constant 30 : i32
      %c1_i32_219 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_216, %c32_i32_217, %c30_i32_218, %c1_i32_219) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_220 = arith.constant 4608 : i32
      %c32_i32_221 = arith.constant 32 : i32
      %c31_i32_222 = arith.constant 31 : i32
      %c1_i32_223 = arith.constant 1 : i32
      func.call @baseline_scale(%of_in_main13_cons_buff_0, %in0_4_cons_buff_1, %of_add_v1_buff_0, %c4608_i32_220, %c32_i32_221, %c31_i32_222, %c1_i32_223) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_main13_cons_prod_lock, Release, 1)
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "scale.o"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_main14_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c512 = arith.constant 512 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c512 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c32_i32 = arith.constant 32 : i32
      %c0_i32 = arith.constant 0 : i32
      %c2_i32 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32, %c32_i32, %c0_i32, %c2_i32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_2 = arith.constant 4608 : i32
      %c32_i32_3 = arith.constant 32 : i32
      %c1_i32 = arith.constant 1 : i32
      %c2_i32_4 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_2, %c32_i32_3, %c1_i32, %c2_i32_4) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_5 = arith.constant 4608 : i32
      %c32_i32_6 = arith.constant 32 : i32
      %c2_i32_7 = arith.constant 2 : i32
      %c2_i32_8 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_5, %c32_i32_6, %c2_i32_7, %c2_i32_8) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_9 = arith.constant 4608 : i32
      %c32_i32_10 = arith.constant 32 : i32
      %c3_i32 = arith.constant 3 : i32
      %c2_i32_11 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_9, %c32_i32_10, %c3_i32, %c2_i32_11) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_12 = arith.constant 4608 : i32
      %c32_i32_13 = arith.constant 32 : i32
      %c4_i32 = arith.constant 4 : i32
      %c2_i32_14 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_12, %c32_i32_13, %c4_i32, %c2_i32_14) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_15 = arith.constant 4608 : i32
      %c32_i32_16 = arith.constant 32 : i32
      %c5_i32 = arith.constant 5 : i32
      %c2_i32_17 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_15, %c32_i32_16, %c5_i32, %c2_i32_17) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_18 = arith.constant 4608 : i32
      %c32_i32_19 = arith.constant 32 : i32
      %c6_i32 = arith.constant 6 : i32
      %c2_i32_20 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_18, %c32_i32_19, %c6_i32, %c2_i32_20) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_21 = arith.constant 4608 : i32
      %c32_i32_22 = arith.constant 32 : i32
      %c7_i32 = arith.constant 7 : i32
      %c2_i32_23 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_21, %c32_i32_22, %c7_i32, %c2_i32_23) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_24 = arith.constant 4608 : i32
      %c32_i32_25 = arith.constant 32 : i32
      %c8_i32 = arith.constant 8 : i32
      %c2_i32_26 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_24, %c32_i32_25, %c8_i32, %c2_i32_26) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_27 = arith.constant 4608 : i32
      %c32_i32_28 = arith.constant 32 : i32
      %c9_i32 = arith.constant 9 : i32
      %c2_i32_29 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_27, %c32_i32_28, %c9_i32, %c2_i32_29) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_30 = arith.constant 4608 : i32
      %c32_i32_31 = arith.constant 32 : i32
      %c10_i32 = arith.constant 10 : i32
      %c2_i32_32 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_30, %c32_i32_31, %c10_i32, %c2_i32_32) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_33 = arith.constant 4608 : i32
      %c32_i32_34 = arith.constant 32 : i32
      %c11_i32 = arith.constant 11 : i32
      %c2_i32_35 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_33, %c32_i32_34, %c11_i32, %c2_i32_35) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_36 = arith.constant 4608 : i32
      %c32_i32_37 = arith.constant 32 : i32
      %c12_i32 = arith.constant 12 : i32
      %c2_i32_38 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_36, %c32_i32_37, %c12_i32, %c2_i32_38) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_39 = arith.constant 4608 : i32
      %c32_i32_40 = arith.constant 32 : i32
      %c13_i32 = arith.constant 13 : i32
      %c2_i32_41 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_39, %c32_i32_40, %c13_i32, %c2_i32_41) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_42 = arith.constant 4608 : i32
      %c32_i32_43 = arith.constant 32 : i32
      %c14_i32 = arith.constant 14 : i32
      %c2_i32_44 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_42, %c32_i32_43, %c14_i32, %c2_i32_44) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_45 = arith.constant 4608 : i32
      %c32_i32_46 = arith.constant 32 : i32
      %c15_i32 = arith.constant 15 : i32
      %c2_i32_47 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_45, %c32_i32_46, %c15_i32, %c2_i32_47) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_48 = arith.constant 4608 : i32
      %c32_i32_49 = arith.constant 32 : i32
      %c16_i32 = arith.constant 16 : i32
      %c2_i32_50 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_48, %c32_i32_49, %c16_i32, %c2_i32_50) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_51 = arith.constant 4608 : i32
      %c32_i32_52 = arith.constant 32 : i32
      %c17_i32 = arith.constant 17 : i32
      %c2_i32_53 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_51, %c32_i32_52, %c17_i32, %c2_i32_53) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_54 = arith.constant 4608 : i32
      %c32_i32_55 = arith.constant 32 : i32
      %c18_i32 = arith.constant 18 : i32
      %c2_i32_56 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_54, %c32_i32_55, %c18_i32, %c2_i32_56) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_57 = arith.constant 4608 : i32
      %c32_i32_58 = arith.constant 32 : i32
      %c19_i32 = arith.constant 19 : i32
      %c2_i32_59 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_57, %c32_i32_58, %c19_i32, %c2_i32_59) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_60 = arith.constant 4608 : i32
      %c32_i32_61 = arith.constant 32 : i32
      %c20_i32 = arith.constant 20 : i32
      %c2_i32_62 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_60, %c32_i32_61, %c20_i32, %c2_i32_62) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_63 = arith.constant 4608 : i32
      %c32_i32_64 = arith.constant 32 : i32
      %c21_i32 = arith.constant 21 : i32
      %c2_i32_65 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_63, %c32_i32_64, %c21_i32, %c2_i32_65) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_66 = arith.constant 4608 : i32
      %c32_i32_67 = arith.constant 32 : i32
      %c22_i32 = arith.constant 22 : i32
      %c2_i32_68 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_66, %c32_i32_67, %c22_i32, %c2_i32_68) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_69 = arith.constant 4608 : i32
      %c32_i32_70 = arith.constant 32 : i32
      %c23_i32 = arith.constant 23 : i32
      %c2_i32_71 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_69, %c32_i32_70, %c23_i32, %c2_i32_71) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_72 = arith.constant 4608 : i32
      %c32_i32_73 = arith.constant 32 : i32
      %c24_i32 = arith.constant 24 : i32
      %c2_i32_74 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_72, %c32_i32_73, %c24_i32, %c2_i32_74) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_75 = arith.constant 4608 : i32
      %c32_i32_76 = arith.constant 32 : i32
      %c25_i32 = arith.constant 25 : i32
      %c2_i32_77 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_75, %c32_i32_76, %c25_i32, %c2_i32_77) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_78 = arith.constant 4608 : i32
      %c32_i32_79 = arith.constant 32 : i32
      %c26_i32 = arith.constant 26 : i32
      %c2_i32_80 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_78, %c32_i32_79, %c26_i32, %c2_i32_80) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_81 = arith.constant 4608 : i32
      %c32_i32_82 = arith.constant 32 : i32
      %c27_i32 = arith.constant 27 : i32
      %c2_i32_83 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_81, %c32_i32_82, %c27_i32, %c2_i32_83) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_84 = arith.constant 4608 : i32
      %c32_i32_85 = arith.constant 32 : i32
      %c28_i32 = arith.constant 28 : i32
      %c2_i32_86 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_84, %c32_i32_85, %c28_i32, %c2_i32_86) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_87 = arith.constant 4608 : i32
      %c32_i32_88 = arith.constant 32 : i32
      %c29_i32 = arith.constant 29 : i32
      %c2_i32_89 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_87, %c32_i32_88, %c29_i32, %c2_i32_89) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_90 = arith.constant 4608 : i32
      %c32_i32_91 = arith.constant 32 : i32
      %c30_i32 = arith.constant 30 : i32
      %c2_i32_92 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_90, %c32_i32_91, %c30_i32, %c2_i32_92) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_93 = arith.constant 4608 : i32
      %c32_i32_94 = arith.constant 32 : i32
      %c31_i32 = arith.constant 31 : i32
      %c2_i32_95 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_0, %of_add_w1_buff_0, %c4608_i32_93, %c32_i32_94, %c31_i32, %c2_i32_95) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_96 = arith.constant 4608 : i32
      %c32_i32_97 = arith.constant 32 : i32
      %c0_i32_98 = arith.constant 0 : i32
      %c2_i32_99 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_96, %c32_i32_97, %c0_i32_98, %c2_i32_99) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_100 = arith.constant 4608 : i32
      %c32_i32_101 = arith.constant 32 : i32
      %c1_i32_102 = arith.constant 1 : i32
      %c2_i32_103 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_100, %c32_i32_101, %c1_i32_102, %c2_i32_103) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_104 = arith.constant 4608 : i32
      %c32_i32_105 = arith.constant 32 : i32
      %c2_i32_106 = arith.constant 2 : i32
      %c2_i32_107 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_104, %c32_i32_105, %c2_i32_106, %c2_i32_107) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_108 = arith.constant 4608 : i32
      %c32_i32_109 = arith.constant 32 : i32
      %c3_i32_110 = arith.constant 3 : i32
      %c2_i32_111 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_108, %c32_i32_109, %c3_i32_110, %c2_i32_111) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_112 = arith.constant 4608 : i32
      %c32_i32_113 = arith.constant 32 : i32
      %c4_i32_114 = arith.constant 4 : i32
      %c2_i32_115 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_112, %c32_i32_113, %c4_i32_114, %c2_i32_115) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_116 = arith.constant 4608 : i32
      %c32_i32_117 = arith.constant 32 : i32
      %c5_i32_118 = arith.constant 5 : i32
      %c2_i32_119 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_116, %c32_i32_117, %c5_i32_118, %c2_i32_119) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_120 = arith.constant 4608 : i32
      %c32_i32_121 = arith.constant 32 : i32
      %c6_i32_122 = arith.constant 6 : i32
      %c2_i32_123 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_120, %c32_i32_121, %c6_i32_122, %c2_i32_123) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_124 = arith.constant 4608 : i32
      %c32_i32_125 = arith.constant 32 : i32
      %c7_i32_126 = arith.constant 7 : i32
      %c2_i32_127 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_124, %c32_i32_125, %c7_i32_126, %c2_i32_127) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_128 = arith.constant 4608 : i32
      %c32_i32_129 = arith.constant 32 : i32
      %c8_i32_130 = arith.constant 8 : i32
      %c2_i32_131 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_128, %c32_i32_129, %c8_i32_130, %c2_i32_131) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_132 = arith.constant 4608 : i32
      %c32_i32_133 = arith.constant 32 : i32
      %c9_i32_134 = arith.constant 9 : i32
      %c2_i32_135 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_132, %c32_i32_133, %c9_i32_134, %c2_i32_135) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_136 = arith.constant 4608 : i32
      %c32_i32_137 = arith.constant 32 : i32
      %c10_i32_138 = arith.constant 10 : i32
      %c2_i32_139 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_136, %c32_i32_137, %c10_i32_138, %c2_i32_139) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_140 = arith.constant 4608 : i32
      %c32_i32_141 = arith.constant 32 : i32
      %c11_i32_142 = arith.constant 11 : i32
      %c2_i32_143 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_140, %c32_i32_141, %c11_i32_142, %c2_i32_143) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_144 = arith.constant 4608 : i32
      %c32_i32_145 = arith.constant 32 : i32
      %c12_i32_146 = arith.constant 12 : i32
      %c2_i32_147 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_144, %c32_i32_145, %c12_i32_146, %c2_i32_147) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_148 = arith.constant 4608 : i32
      %c32_i32_149 = arith.constant 32 : i32
      %c13_i32_150 = arith.constant 13 : i32
      %c2_i32_151 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_148, %c32_i32_149, %c13_i32_150, %c2_i32_151) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_152 = arith.constant 4608 : i32
      %c32_i32_153 = arith.constant 32 : i32
      %c14_i32_154 = arith.constant 14 : i32
      %c2_i32_155 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_152, %c32_i32_153, %c14_i32_154, %c2_i32_155) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_156 = arith.constant 4608 : i32
      %c32_i32_157 = arith.constant 32 : i32
      %c15_i32_158 = arith.constant 15 : i32
      %c2_i32_159 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_156, %c32_i32_157, %c15_i32_158, %c2_i32_159) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_160 = arith.constant 4608 : i32
      %c32_i32_161 = arith.constant 32 : i32
      %c16_i32_162 = arith.constant 16 : i32
      %c2_i32_163 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_160, %c32_i32_161, %c16_i32_162, %c2_i32_163) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_164 = arith.constant 4608 : i32
      %c32_i32_165 = arith.constant 32 : i32
      %c17_i32_166 = arith.constant 17 : i32
      %c2_i32_167 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_164, %c32_i32_165, %c17_i32_166, %c2_i32_167) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_168 = arith.constant 4608 : i32
      %c32_i32_169 = arith.constant 32 : i32
      %c18_i32_170 = arith.constant 18 : i32
      %c2_i32_171 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_168, %c32_i32_169, %c18_i32_170, %c2_i32_171) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_172 = arith.constant 4608 : i32
      %c32_i32_173 = arith.constant 32 : i32
      %c19_i32_174 = arith.constant 19 : i32
      %c2_i32_175 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_172, %c32_i32_173, %c19_i32_174, %c2_i32_175) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_176 = arith.constant 4608 : i32
      %c32_i32_177 = arith.constant 32 : i32
      %c20_i32_178 = arith.constant 20 : i32
      %c2_i32_179 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_176, %c32_i32_177, %c20_i32_178, %c2_i32_179) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_180 = arith.constant 4608 : i32
      %c32_i32_181 = arith.constant 32 : i32
      %c21_i32_182 = arith.constant 21 : i32
      %c2_i32_183 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_180, %c32_i32_181, %c21_i32_182, %c2_i32_183) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_184 = arith.constant 4608 : i32
      %c32_i32_185 = arith.constant 32 : i32
      %c22_i32_186 = arith.constant 22 : i32
      %c2_i32_187 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_184, %c32_i32_185, %c22_i32_186, %c2_i32_187) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_188 = arith.constant 4608 : i32
      %c32_i32_189 = arith.constant 32 : i32
      %c23_i32_190 = arith.constant 23 : i32
      %c2_i32_191 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_188, %c32_i32_189, %c23_i32_190, %c2_i32_191) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_192 = arith.constant 4608 : i32
      %c32_i32_193 = arith.constant 32 : i32
      %c24_i32_194 = arith.constant 24 : i32
      %c2_i32_195 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_192, %c32_i32_193, %c24_i32_194, %c2_i32_195) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_196 = arith.constant 4608 : i32
      %c32_i32_197 = arith.constant 32 : i32
      %c25_i32_198 = arith.constant 25 : i32
      %c2_i32_199 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_196, %c32_i32_197, %c25_i32_198, %c2_i32_199) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_200 = arith.constant 4608 : i32
      %c32_i32_201 = arith.constant 32 : i32
      %c26_i32_202 = arith.constant 26 : i32
      %c2_i32_203 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_200, %c32_i32_201, %c26_i32_202, %c2_i32_203) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_204 = arith.constant 4608 : i32
      %c32_i32_205 = arith.constant 32 : i32
      %c27_i32_206 = arith.constant 27 : i32
      %c2_i32_207 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_204, %c32_i32_205, %c27_i32_206, %c2_i32_207) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_208 = arith.constant 4608 : i32
      %c32_i32_209 = arith.constant 32 : i32
      %c28_i32_210 = arith.constant 28 : i32
      %c2_i32_211 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_208, %c32_i32_209, %c28_i32_210, %c2_i32_211) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_212 = arith.constant 4608 : i32
      %c32_i32_213 = arith.constant 32 : i32
      %c29_i32_214 = arith.constant 29 : i32
      %c2_i32_215 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_212, %c32_i32_213, %c29_i32_214, %c2_i32_215) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_216 = arith.constant 4608 : i32
      %c32_i32_217 = arith.constant 32 : i32
      %c30_i32_218 = arith.constant 30 : i32
      %c2_i32_219 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_216, %c32_i32_217, %c30_i32_218, %c2_i32_219) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_220 = arith.constant 4608 : i32
      %c32_i32_221 = arith.constant 32 : i32
      %c31_i32_222 = arith.constant 31 : i32
      %c2_i32_223 = arith.constant 2 : i32
      func.call @baseline_scale(%of_in_main14_cons_buff_0, %in0_5_cons_buff_1, %of_add_w1_buff_0, %c4608_i32_220, %c32_i32_221, %c31_i32_222, %c2_i32_223) : (memref<4610xbf16>, memref<96xbf16>, memref<4608xbf16>, i32, i32, i32, i32) -> ()
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_main14_cons_prod_lock, Release, 1)
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "scale.o"}
    %core_2_5 = aie.core(%tile_2_5) {
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
      aie.use_lock(%of_add_u1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_uv1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @add_kernel(%of_add_u1_buff_0, %of_add_v1_cons_buff_0, %of_add_uv1_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_add_uv1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, Release, 1)
      aie.use_lock(%of_add_v1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "add.o"}
    %core_2_4 = aie.core(%tile_2_4) {
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
      aie.use_lock(%of_add_w1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_uv1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add2main1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @add_kernel(%of_add_w1_cons_buff_0, %of_add_uv1_buff_0, %of_add2main1_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_add2main1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_add_uv1_prod_lock, Release, 1)
      %4 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "add.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_main10_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c16384 = arith.constant 16384 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_add2main1_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_join_real1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c0_i32 = arith.constant 0 : i32
      func.call @main_kernel(%of_add2main1_0_cons_buff_0, %of_in_main10_cons_buff_0, %of_join_real1_buff_0, %c4608_i32, %c0_i32) : (memref<4608xbf16>, memref<4610xbf16>, memref<2304xbf16>, i32, i32) -> ()
      aie.use_lock(%of_join_real1_cons_lock, Release, 1)
      aie.use_lock(%of_add2main1_0_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_main10_cons_prod_lock, Release, 1)
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "kernels.a"}
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_main11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c16384 = arith.constant 16384 : index
      %c1_1 = arith.constant 1 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16384 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_add2main1_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_join_imag1_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c1_i32 = arith.constant 1 : i32
      func.call @main_kernel(%of_add2main1_1_cons_buff_0, %of_in_main11_cons_buff_0, %of_join_imag1_buff_0, %c4608_i32, %c1_i32) : (memref<4608xbf16>, memref<4610xbf16>, memref<2304xbf16>, i32, i32) -> ()
      aie.use_lock(%of_join_imag1_cons_lock, Release, 1)
      aie.use_lock(%of_add2main1_1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c1_1 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_main11_cons_prod_lock, Release, 1)
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "kernels.a"}
    %core_1_2 = aie.core(%tile_1_2) {
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
      aie.use_lock(%of_real2sub_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_imag2sub_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_sub2mean_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      func.call @sub_kernel(%of_real2sub_cons_buff_0, %of_imag2sub_cons_buff_0, %of_sub2mean_buff_0, %c4608_i32) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_sub2mean_cons_lock, Release, 1)
      aie.use_lock(%of_real2sub_cons_prod_lock, Release, 1)
      aie.use_lock(%of_imag2sub_cons_prod_lock, Release, 1)
      aie.use_lock(%of_real2sub_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_imag2sub_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_sub2mean_prod_lock, AcquireGreaterEqual, 1)
      %c4608_i32_2 = arith.constant 4608 : i32
      func.call @sub_kernel(%of_real2sub_cons_buff_0, %of_imag2sub_cons_buff_0, %of_sub2mean_buff_1, %c4608_i32_2) : (memref<4608xbf16>, memref<4608xbf16>, memref<4608xbf16>, i32) -> ()
      aie.use_lock(%of_sub2mean_cons_lock, Release, 1)
      aie.use_lock(%of_real2sub_cons_prod_lock, Release, 1)
      aie.use_lock(%of_imag2sub_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
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
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32 = arith.constant 4608 : i32
      %c0_i32 = arith.constant 0 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32, %c0_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_2 = arith.constant 4608 : i32
      %c1_i32 = arith.constant 1 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_2, %c1_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_3 = arith.constant 4608 : i32
      %c2_i32 = arith.constant 2 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_3, %c2_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_4 = arith.constant 4608 : i32
      %c3_i32 = arith.constant 3 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_4, %c3_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_5 = arith.constant 4608 : i32
      %c4_i32 = arith.constant 4 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_5, %c4_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_6 = arith.constant 4608 : i32
      %c5_i32 = arith.constant 5 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_6, %c5_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_7 = arith.constant 4608 : i32
      %c6_i32 = arith.constant 6 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_7, %c6_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_8 = arith.constant 4608 : i32
      %c7_i32 = arith.constant 7 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_8, %c7_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_9 = arith.constant 4608 : i32
      %c8_i32 = arith.constant 8 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_9, %c8_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_10 = arith.constant 4608 : i32
      %c9_i32 = arith.constant 9 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_10, %c9_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_11 = arith.constant 4608 : i32
      %c10_i32 = arith.constant 10 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_11, %c10_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_12 = arith.constant 4608 : i32
      %c11_i32 = arith.constant 11 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_12, %c11_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_13 = arith.constant 4608 : i32
      %c12_i32 = arith.constant 12 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_13, %c12_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_14 = arith.constant 4608 : i32
      %c13_i32 = arith.constant 13 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_14, %c13_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_15 = arith.constant 4608 : i32
      %c14_i32 = arith.constant 14 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_15, %c14_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_16 = arith.constant 4608 : i32
      %c15_i32 = arith.constant 15 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_16, %c15_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_17 = arith.constant 4608 : i32
      %c16_i32 = arith.constant 16 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_17, %c16_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_18 = arith.constant 4608 : i32
      %c17_i32 = arith.constant 17 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_18, %c17_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_19 = arith.constant 4608 : i32
      %c18_i32 = arith.constant 18 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_19, %c18_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_20 = arith.constant 4608 : i32
      %c19_i32 = arith.constant 19 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_20, %c19_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_21 = arith.constant 4608 : i32
      %c20_i32 = arith.constant 20 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_21, %c20_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_22 = arith.constant 4608 : i32
      %c21_i32 = arith.constant 21 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_22, %c21_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_23 = arith.constant 4608 : i32
      %c22_i32 = arith.constant 22 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_23, %c22_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_24 = arith.constant 4608 : i32
      %c23_i32 = arith.constant 23 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_24, %c23_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_25 = arith.constant 4608 : i32
      %c24_i32 = arith.constant 24 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_25, %c24_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_26 = arith.constant 4608 : i32
      %c25_i32 = arith.constant 25 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_26, %c25_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_27 = arith.constant 4608 : i32
      %c26_i32 = arith.constant 26 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_27, %c26_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_28 = arith.constant 4608 : i32
      %c27_i32 = arith.constant 27 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_28, %c27_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_29 = arith.constant 4608 : i32
      %c28_i32 = arith.constant 28 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_29, %c28_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_30 = arith.constant 4608 : i32
      %c29_i32 = arith.constant 29 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_30, %c29_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_31 = arith.constant 4608 : i32
      %c30_i32 = arith.constant 30 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_0, %c4608_i32_31, %c30_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_32 = arith.constant 4608 : i32
      %c31_i32 = arith.constant 31 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_0, %c4608_i32_32, %c31_i32) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_33 = arith.constant 4608 : i32
      %c0_i32_34 = arith.constant 0 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_33, %c0_i32_34) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_35 = arith.constant 4608 : i32
      %c1_i32_36 = arith.constant 1 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_35, %c1_i32_36) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_37 = arith.constant 4608 : i32
      %c2_i32_38 = arith.constant 2 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_37, %c2_i32_38) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_39 = arith.constant 4608 : i32
      %c3_i32_40 = arith.constant 3 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_39, %c3_i32_40) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_41 = arith.constant 4608 : i32
      %c4_i32_42 = arith.constant 4 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_41, %c4_i32_42) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_43 = arith.constant 4608 : i32
      %c5_i32_44 = arith.constant 5 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_43, %c5_i32_44) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_45 = arith.constant 4608 : i32
      %c6_i32_46 = arith.constant 6 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_45, %c6_i32_46) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_47 = arith.constant 4608 : i32
      %c7_i32_48 = arith.constant 7 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_47, %c7_i32_48) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_49 = arith.constant 4608 : i32
      %c8_i32_50 = arith.constant 8 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_49, %c8_i32_50) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_51 = arith.constant 4608 : i32
      %c9_i32_52 = arith.constant 9 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_51, %c9_i32_52) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_53 = arith.constant 4608 : i32
      %c10_i32_54 = arith.constant 10 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_53, %c10_i32_54) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_55 = arith.constant 4608 : i32
      %c11_i32_56 = arith.constant 11 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_55, %c11_i32_56) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_57 = arith.constant 4608 : i32
      %c12_i32_58 = arith.constant 12 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_57, %c12_i32_58) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_59 = arith.constant 4608 : i32
      %c13_i32_60 = arith.constant 13 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_59, %c13_i32_60) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_61 = arith.constant 4608 : i32
      %c14_i32_62 = arith.constant 14 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_61, %c14_i32_62) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_63 = arith.constant 4608 : i32
      %c15_i32_64 = arith.constant 15 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_63, %c15_i32_64) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_65 = arith.constant 4608 : i32
      %c16_i32_66 = arith.constant 16 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_65, %c16_i32_66) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_67 = arith.constant 4608 : i32
      %c17_i32_68 = arith.constant 17 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_67, %c17_i32_68) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_69 = arith.constant 4608 : i32
      %c18_i32_70 = arith.constant 18 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_69, %c18_i32_70) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_71 = arith.constant 4608 : i32
      %c19_i32_72 = arith.constant 19 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_71, %c19_i32_72) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_73 = arith.constant 4608 : i32
      %c20_i32_74 = arith.constant 20 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_73, %c20_i32_74) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_75 = arith.constant 4608 : i32
      %c21_i32_76 = arith.constant 21 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_75, %c21_i32_76) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_77 = arith.constant 4608 : i32
      %c22_i32_78 = arith.constant 22 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_77, %c22_i32_78) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_79 = arith.constant 4608 : i32
      %c23_i32_80 = arith.constant 23 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_79, %c23_i32_80) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_81 = arith.constant 4608 : i32
      %c24_i32_82 = arith.constant 24 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_81, %c24_i32_82) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_83 = arith.constant 4608 : i32
      %c25_i32_84 = arith.constant 25 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_83, %c25_i32_84) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_85 = arith.constant 4608 : i32
      %c26_i32_86 = arith.constant 26 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_85, %c26_i32_86) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_87 = arith.constant 4608 : i32
      %c27_i32_88 = arith.constant 27 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_87, %c27_i32_88) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_89 = arith.constant 4608 : i32
      %c28_i32_90 = arith.constant 28 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_89, %c28_i32_90) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_91 = arith.constant 4608 : i32
      %c29_i32_92 = arith.constant 29 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_91, %c29_i32_92) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_93 = arith.constant 4608 : i32
      %c30_i32_94 = arith.constant 30 : i32
      func.call @mean(%of_sub2mean_buff_0, %out_buff_1, %c4608_i32_93, %c30_i32_94) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%of_sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4608_i32_95 = arith.constant 4608 : i32
      %c31_i32_96 = arith.constant 31 : i32
      func.call @mean(%of_sub2mean_buff_1, %out_buff_1, %c4608_i32_95, %c31_i32_96) : (memref<4608xbf16>, memref<32xbf16>, i32, i32) -> ()
      aie.use_lock(%of_sub2mean_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "mean.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<23050xbf16>, %arg1: memref<23050xbf16>, %arg2: memref<23050xbf16>, %arg3: memref<23050xbf16>) {
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][1, 1, 1, 49152][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][1, 1, 1, 23050][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(%arg2[0, 0, 0, 0][1, 1, 1, 23050][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(%arg3[0, 0, 0, 0][1, 1, 1, 16384][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<23050xbf16>
      aiex.npu.dma_wait {symbol = @out}
    }
    aie.shim_dma_allocation @in0(MM2S, 0, 1)
    %mem_0_5 = aie.mem(%tile_0_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_0 : memref<96xbf16>, 0, 96) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_1 : memref<96xbf16>, 0, 96) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb5)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%of_in_main02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_main02_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_main02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb3
      aie.end
    }
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_0 : memref<96xbf16>, 0, 96) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_1 : memref<96xbf16>, 0, 96) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb5)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%of_in_main03_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_main03_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_main03_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb6, ^bb7)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%of_add_v0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add_v0_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 3 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_add_v0_prod_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb7:  // pred: ^bb5
      aie.end
    }
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_0 : memref<96xbf16>, 0, 96) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_1 : memref<96xbf16>, 0, 96) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb5)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%of_in_main04_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_main04_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_main04_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb6, ^bb7)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%of_add_w0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add_w0_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 3 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_add_w0_prod_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb7:  // pred: ^bb5
      aie.end
    }
    %mem_3_5 = aie.mem(%tile_3_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_0 : memref<96xbf16>, 0, 96) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_1 : memref<96xbf16>, 0, 96) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb5)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%of_in_main12_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_main12_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_main12_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb3
      aie.end
    }
    %mem_3_4 = aie.mem(%tile_3_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_0 : memref<96xbf16>, 0, 96) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_1 : memref<96xbf16>, 0, 96) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb5)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%of_in_main13_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_main13_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_main13_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb6, ^bb7)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%of_add_v1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add_v1_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 3 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_add_v1_prod_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb7:  // pred: ^bb5
      aie.end
    }
    %mem_3_3 = aie.mem(%tile_3_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_0 : memref<96xbf16>, 0, 96) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_1 : memref<96xbf16>, 0, 96) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb5)
    ^bb4:  // 2 preds: ^bb3, ^bb4
      aie.use_lock(%of_in_main14_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_main14_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_main14_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb5:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb6, ^bb7)
    ^bb6:  // 2 preds: ^bb5, ^bb6
      aie.use_lock(%of_add_w1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add_w1_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 3 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_add_w1_prod_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb7:  // pred: ^bb5
      aie.end
    }
    aie.shim_dma_allocation @in1(MM2S, 0, 0)
    %memtile_dma_0_1 = aie.memtile_dma(%mem_tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 5)
      aie.dma_bd(%in1_cons_buff_0 : memref<23050xbf16>, 0, 23050) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 5)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 5)
      aie.dma_bd(%in1_cons_buff_1 : memref<23050xbf16>, 0, 23050) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 5)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<23050xbf16>, 0, 4610) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<23050xbf16>, 0, 4610) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<23050xbf16>, 4610, 4610) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<23050xbf16>, 4610, 4610) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<23050xbf16>, 9220, 4610) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<23050xbf16>, 9220, 4610) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(MM2S, 3, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<23050xbf16>, 13830, 4610) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<23050xbf16>, 13830, 4610) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(MM2S, 4, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<23050xbf16>, 18440, 4610) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<23050xbf16>, 18440, 4610) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      aie.end
    }
    aie.shim_dma_allocation @in2(MM2S, 0, 3)
    %memtile_dma_3_1 = aie.memtile_dma(%mem_tile_3_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 5)
      aie.dma_bd(%in2_cons_buff_0 : memref<23050xbf16>, 0, 23050) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 5)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 5)
      aie.dma_bd(%in2_cons_buff_1 : memref<23050xbf16>, 0, 23050) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 5)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<23050xbf16>, 0, 4610) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<23050xbf16>, 0, 4610) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<23050xbf16>, 4610, 4610) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<23050xbf16>, 4610, 4610) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<23050xbf16>, 9220, 4610) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<23050xbf16>, 9220, 4610) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(MM2S, 3, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<23050xbf16>, 13830, 4610) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<23050xbf16>, 13830, 4610) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(MM2S, 4, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<23050xbf16>, 18440, 4610) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<23050xbf16>, 18440, 4610) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      aie.end
    }
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_in_main00_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_main00_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_main00_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%of_add2main0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2main0_0_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_add2main0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(MM2S, 0, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%of_join_real0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_join_real0_buff_0 : memref<2304xbf16>, 0, 2304) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_join_real0_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_in_main01_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_main01_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_main01_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%of_add2main0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2main0_1_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_add2main0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(MM2S, 0, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%of_join_imag0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_join_imag0_buff_0 : memref<2304xbf16>, 0, 2304) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_join_imag0_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      aie.end
    }
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_in_main10_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_main10_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_main10_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%of_add2main1_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2main1_0_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_add2main1_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(MM2S, 0, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%of_join_real1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_join_real1_buff_0 : memref<2304xbf16>, 0, 2304) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_join_real1_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_in_main11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_main11_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_main11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%of_add2main1_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2main1_1_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_add2main1_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(MM2S, 0, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%of_join_imag1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_join_imag1_buff_0 : memref<2304xbf16>, 0, 2304) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_join_imag1_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      aie.end
    }
    %mem_1_5 = aie.mem(%tile_1_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_add_v0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add_v0_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_add_v0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      aie.end
    }
    %mem_2_5 = aie.mem(%tile_2_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_add_v1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add_v1_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_add_v1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      aie.end
    }
    %mem_1_4 = aie.mem(%tile_1_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_add_w0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add_w0_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_add_w0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%of_add2main0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2main0_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_add2main0_prod_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      aie.end
    }
    %mem_2_4 = aie.mem(%tile_2_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_add_w1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add_w1_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_add_w1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%of_add2main1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2main1_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_add2main1_prod_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      aie.end
    }
    %memtile_dma_2_1 = aie.memtile_dma(%mem_tile_2_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_real2sub_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_real2sub_buff_0 : memref<4608xbf16>, 0, 2304) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_real2sub_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%of_real2sub_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_real2sub_buff_0 : memref<4608xbf16>, 2304, 2304) {bd_id = 24 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%of_real2sub_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(MM2S, 0, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%of_real2sub_cons_lock, AcquireGreaterEqual, 2)
      aie.dma_bd(%of_real2sub_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_real2sub_prod_lock, Release, 2)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      aie.end
    }
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_imag2sub_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_imag2sub_buff_0 : memref<4608xbf16>, 0, 2304) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_imag2sub_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%of_imag2sub_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_imag2sub_buff_0 : memref<4608xbf16>, 2304, 2304) {bd_id = 24 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%of_imag2sub_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(MM2S, 0, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%of_imag2sub_cons_lock, AcquireGreaterEqual, 2)
      aie.dma_bd(%of_imag2sub_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_imag2sub_prod_lock, Release, 2)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      aie.end
    }
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_real2sub_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_real2sub_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_real2sub_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%of_imag2sub_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_imag2sub_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_imag2sub_cons_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
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
