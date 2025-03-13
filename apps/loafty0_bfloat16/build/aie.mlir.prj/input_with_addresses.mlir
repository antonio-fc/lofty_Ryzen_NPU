module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<2xbf16>
    memref.global "public" @out : memref<2xbf16>
    memref.global "public" @of_add2real1_0_cons : memref<4608xbf16>
    memref.global "public" @of_add2real1_1_cons : memref<4608xbf16>
    memref.global "public" @of_add2real1 : memref<4608xbf16>
    memref.global "public" @of_add2real0_0_cons : memref<4608xbf16>
    memref.global "public" @of_add2real0_1_cons : memref<4608xbf16>
    memref.global "public" @of_add2real0 : memref<4608xbf16>
    memref.global "public" @of_add_uv1 : memref<4608xbf16>
    memref.global "public" @of_add_w1_cons : memref<4608xbf16>
    memref.global "public" @of_add_w1 : memref<4608xbf16>
    memref.global "public" @of_add_v1_cons : memref<4608xbf16>
    memref.global "public" @of_add_v1 : memref<4608xbf16>
    memref.global "public" @of_add_u1 : memref<4608xbf16>
    memref.global "public" @of_add_uv0 : memref<4608xbf16>
    memref.global "public" @of_add_w0_cons : memref<4608xbf16>
    memref.global "public" @of_add_w0 : memref<4608xbf16>
    memref.global "public" @of_add_v0_cons : memref<4608xbf16>
    memref.global "public" @of_add_v0 : memref<4608xbf16>
    memref.global "public" @of_add_u0 : memref<4608xbf16>
    memref.global "public" @of_in_mainB4_cons : memref<4610xbf16>
    memref.global "public" @of_in_mainB4 : memref<4610xbf16>
    memref.global "public" @of_in_mainA4_cons : memref<4610xbf16>
    memref.global "public" @of_in_mainA4 : memref<4610xbf16>
    memref.global "public" @of_in_mainB3_cons : memref<4610xbf16>
    memref.global "public" @of_in_mainB3 : memref<4610xbf16>
    memref.global "public" @of_in_mainA3_cons : memref<4610xbf16>
    memref.global "public" @of_in_mainA3 : memref<4610xbf16>
    memref.global "public" @of_in_mainB2_cons : memref<4610xbf16>
    memref.global "public" @of_in_mainB2 : memref<4610xbf16>
    memref.global "public" @of_in_mainA2_cons : memref<4610xbf16>
    memref.global "public" @of_in_mainA2 : memref<4610xbf16>
    memref.global "public" @of_in_mainB1_cons : memref<4610xbf16>
    memref.global "public" @of_in_mainB1 : memref<4610xbf16>
    memref.global "public" @of_in_mainA1_cons : memref<4610xbf16>
    memref.global "public" @of_in_mainA1 : memref<4610xbf16>
    memref.global "public" @of_in_mainB0_cons : memref<4610xbf16>
    memref.global "public" @of_in_mainB0 : memref<4610xbf16>
    memref.global "public" @of_in_mainA0_cons : memref<4610xbf16>
    memref.global "public" @of_in_mainA0 : memref<4610xbf16>
    memref.global "public" @in2_cons : memref<23050xbf16>
    memref.global "public" @in2 : memref<23050xbf16>
    memref.global "public" @in1_cons : memref<23050xbf16>
    memref.global "public" @in1 : memref<23050xbf16>
    memref.global "public" @in0_0_cons : memref<6xbf16>
    memref.global "public" @in0_1_cons : memref<6xbf16>
    memref.global "public" @in0_2_cons : memref<6xbf16>
    memref.global "public" @in0_3_cons : memref<6xbf16>
    memref.global "public" @in0_4_cons : memref<6xbf16>
    memref.global "public" @in0_5_cons : memref<6xbf16>
    memref.global "public" @in0 : memref<6xbf16>
    func.func private @passthrough(memref<4610xbf16>, memref<4610xbf16>, i32)
    func.func private @mean(memref<4608xbf16>, memref<2xbf16>, i32, i32)
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
    %out_buff_0 = aie.buffer(%tile_2_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<2xbf16> 
    %out_buff_1 = aie.buffer(%tile_2_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out_buff_1"} : memref<2xbf16> 
    %out_prod_lock = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "out_prod_lock"}
    %out_cons_lock = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "out_cons_lock"}
    %of_add2real1_0_cons_buff_0 = aie.buffer(%tile_2_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_add2real1_0_cons_buff_0"} : memref<4608xbf16> 
    %of_add2real1_0_cons_buff_1 = aie.buffer(%tile_2_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_add2real1_0_cons_buff_1"} : memref<4608xbf16> 
    %of_add2real1_0_cons_prod_lock = aie.lock(%tile_2_3, 2) {init = 2 : i32, sym_name = "of_add2real1_0_cons_prod_lock"}
    %of_add2real1_0_cons_cons_lock = aie.lock(%tile_2_3, 3) {init = 0 : i32, sym_name = "of_add2real1_0_cons_cons_lock"}
    %of_add2real1_1_cons_buff_0 = aie.buffer(%tile_3_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_add2real1_1_cons_buff_0"} : memref<4608xbf16> 
    %of_add2real1_1_cons_buff_1 = aie.buffer(%tile_3_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_add2real1_1_cons_buff_1"} : memref<4608xbf16> 
    %of_add2real1_1_cons_prod_lock = aie.lock(%tile_3_2, 2) {init = 2 : i32, sym_name = "of_add2real1_1_cons_prod_lock"}
    %of_add2real1_1_cons_cons_lock = aie.lock(%tile_3_2, 3) {init = 0 : i32, sym_name = "of_add2real1_1_cons_cons_lock"}
    %of_add2real1_buff_0 = aie.buffer(%tile_2_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_add2real1_buff_0"} : memref<4608xbf16> 
    %of_add2real1_buff_1 = aie.buffer(%tile_2_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add2real1_buff_1"} : memref<4608xbf16> 
    %of_add2real1_prod_lock = aie.lock(%tile_2_4, 2) {init = 2 : i32, sym_name = "of_add2real1_prod_lock"}
    %of_add2real1_cons_lock = aie.lock(%tile_2_4, 3) {init = 0 : i32, sym_name = "of_add2real1_cons_lock"}
    %of_add2real0_0_cons_buff_0 = aie.buffer(%tile_1_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_add2real0_0_cons_buff_0"} : memref<4608xbf16> 
    %of_add2real0_0_cons_buff_1 = aie.buffer(%tile_1_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_add2real0_0_cons_buff_1"} : memref<4608xbf16> 
    %of_add2real0_0_cons_prod_lock = aie.lock(%tile_1_3, 2) {init = 2 : i32, sym_name = "of_add2real0_0_cons_prod_lock"}
    %of_add2real0_0_cons_cons_lock = aie.lock(%tile_1_3, 3) {init = 0 : i32, sym_name = "of_add2real0_0_cons_cons_lock"}
    %of_add2real0_1_cons_buff_0 = aie.buffer(%tile_0_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_add2real0_1_cons_buff_0"} : memref<4608xbf16> 
    %of_add2real0_1_cons_buff_1 = aie.buffer(%tile_0_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_add2real0_1_cons_buff_1"} : memref<4608xbf16> 
    %of_add2real0_1_cons_prod_lock = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "of_add2real0_1_cons_prod_lock"}
    %of_add2real0_1_cons_cons_lock = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "of_add2real0_1_cons_cons_lock"}
    %of_add2real0_buff_0 = aie.buffer(%tile_1_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_add2real0_buff_0"} : memref<4608xbf16> 
    %of_add2real0_buff_1 = aie.buffer(%tile_1_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add2real0_buff_1"} : memref<4608xbf16> 
    %of_add2real0_prod_lock = aie.lock(%tile_1_4, 2) {init = 2 : i32, sym_name = "of_add2real0_prod_lock"}
    %of_add2real0_cons_lock = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "of_add2real0_cons_lock"}
    %of_add_uv1_buff_0 = aie.buffer(%tile_2_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_add_uv1_buff_0"} : memref<4608xbf16> 
    %of_add_uv1_buff_1 = aie.buffer(%tile_2_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add_uv1_buff_1"} : memref<4608xbf16> 
    %of_add_uv1_prod_lock = aie.lock(%tile_2_5, 4) {init = 2 : i32, sym_name = "of_add_uv1_prod_lock"}
    %of_add_uv1_cons_lock = aie.lock(%tile_2_5, 5) {init = 0 : i32, sym_name = "of_add_uv1_cons_lock"}
    %of_add_w1_cons_buff_0 = aie.buffer(%tile_2_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_add_w1_cons_buff_0"} : memref<4608xbf16> 
    %of_add_w1_cons_prod_lock = aie.lock(%tile_2_4, 0) {init = 1 : i32, sym_name = "of_add_w1_cons_prod_lock"}
    %of_add_w1_cons_cons_lock = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "of_add_w1_cons_cons_lock"}
    %of_add_w1_buff_0 = aie.buffer(%tile_3_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_add_w1_buff_0"} : memref<4608xbf16> 
    %of_add_w1_prod_lock = aie.lock(%tile_3_3, 4) {init = 1 : i32, sym_name = "of_add_w1_prod_lock"}
    %of_add_w1_cons_lock = aie.lock(%tile_3_3, 5) {init = 0 : i32, sym_name = "of_add_w1_cons_lock"}
    %of_add_v1_cons_buff_0 = aie.buffer(%tile_2_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_add_v1_cons_buff_0"} : memref<4608xbf16> 
    %of_add_v1_cons_prod_lock = aie.lock(%tile_2_5, 2) {init = 1 : i32, sym_name = "of_add_v1_cons_prod_lock"}
    %of_add_v1_cons_cons_lock = aie.lock(%tile_2_5, 3) {init = 0 : i32, sym_name = "of_add_v1_cons_cons_lock"}
    %of_add_v1_buff_0 = aie.buffer(%tile_3_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_add_v1_buff_0"} : memref<4608xbf16> 
    %of_add_v1_prod_lock = aie.lock(%tile_3_4, 4) {init = 1 : i32, sym_name = "of_add_v1_prod_lock"}
    %of_add_v1_cons_lock = aie.lock(%tile_3_4, 5) {init = 0 : i32, sym_name = "of_add_v1_cons_lock"}
    %of_add_u1_buff_0 = aie.buffer(%tile_2_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_add_u1_buff_0"} : memref<4608xbf16> 
    %of_add_u1_prod_lock = aie.lock(%tile_2_5, 0) {init = 1 : i32, sym_name = "of_add_u1_prod_lock"}
    %of_add_u1_cons_lock = aie.lock(%tile_2_5, 1) {init = 0 : i32, sym_name = "of_add_u1_cons_lock"}
    %of_add_uv0_buff_0 = aie.buffer(%tile_1_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_add_uv0_buff_0"} : memref<4608xbf16> 
    %of_add_uv0_buff_1 = aie.buffer(%tile_1_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_add_uv0_buff_1"} : memref<4608xbf16> 
    %of_add_uv0_prod_lock = aie.lock(%tile_1_5, 2) {init = 2 : i32, sym_name = "of_add_uv0_prod_lock"}
    %of_add_uv0_cons_lock = aie.lock(%tile_1_5, 3) {init = 0 : i32, sym_name = "of_add_uv0_cons_lock"}
    %of_add_w0_cons_buff_0 = aie.buffer(%tile_1_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_add_w0_cons_buff_0"} : memref<4608xbf16> 
    %of_add_w0_cons_prod_lock = aie.lock(%tile_1_4, 0) {init = 1 : i32, sym_name = "of_add_w0_cons_prod_lock"}
    %of_add_w0_cons_cons_lock = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "of_add_w0_cons_cons_lock"}
    %of_add_w0_buff_0 = aie.buffer(%tile_0_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_add_w0_buff_0"} : memref<4608xbf16> 
    %of_add_w0_prod_lock = aie.lock(%tile_0_3, 4) {init = 1 : i32, sym_name = "of_add_w0_prod_lock"}
    %of_add_w0_cons_lock = aie.lock(%tile_0_3, 5) {init = 0 : i32, sym_name = "of_add_w0_cons_lock"}
    %of_add_v0_cons_buff_0 = aie.buffer(%tile_1_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_add_v0_cons_buff_0"} : memref<4608xbf16> 
    %of_add_v0_cons_prod_lock = aie.lock(%tile_1_5, 0) {init = 1 : i32, sym_name = "of_add_v0_cons_prod_lock"}
    %of_add_v0_cons_cons_lock = aie.lock(%tile_1_5, 1) {init = 0 : i32, sym_name = "of_add_v0_cons_cons_lock"}
    %of_add_v0_buff_0 = aie.buffer(%tile_0_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_add_v0_buff_0"} : memref<4608xbf16> 
    %of_add_v0_prod_lock = aie.lock(%tile_0_4, 4) {init = 1 : i32, sym_name = "of_add_v0_prod_lock"}
    %of_add_v0_cons_lock = aie.lock(%tile_0_4, 5) {init = 0 : i32, sym_name = "of_add_v0_cons_lock"}
    %of_add_u0_buff_0 = aie.buffer(%tile_0_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_add_u0_buff_0"} : memref<4608xbf16> 
    %of_add_u0_prod_lock = aie.lock(%tile_0_5, 4) {init = 1 : i32, sym_name = "of_add_u0_prod_lock"}
    %of_add_u0_cons_lock = aie.lock(%tile_0_5, 5) {init = 0 : i32, sym_name = "of_add_u0_cons_lock"}
    %of_in_mainB4_cons_buff_0 = aie.buffer(%tile_3_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB4_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainB4_cons_buff_1 = aie.buffer(%tile_3_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB4_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainB4_cons_prod_lock = aie.lock(%tile_3_3, 2) {init = 2 : i32, sym_name = "of_in_mainB4_cons_prod_lock"}
    %of_in_mainB4_cons_cons_lock = aie.lock(%tile_3_3, 3) {init = 0 : i32, sym_name = "of_in_mainB4_cons_cons_lock"}
    %of_in_mainA4_cons_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA4_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainA4_cons_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA4_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainA4_cons_prod_lock = aie.lock(%tile_0_3, 2) {init = 2 : i32, sym_name = "of_in_mainA4_cons_prod_lock"}
    %of_in_mainA4_cons_cons_lock = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "of_in_mainA4_cons_cons_lock"}
    %of_in_mainB3_cons_buff_0 = aie.buffer(%tile_3_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB3_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainB3_cons_buff_1 = aie.buffer(%tile_3_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB3_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainB3_cons_prod_lock = aie.lock(%tile_3_4, 2) {init = 2 : i32, sym_name = "of_in_mainB3_cons_prod_lock"}
    %of_in_mainB3_cons_cons_lock = aie.lock(%tile_3_4, 3) {init = 0 : i32, sym_name = "of_in_mainB3_cons_cons_lock"}
    %of_in_mainA3_cons_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA3_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainA3_cons_buff_1 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA3_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainA3_cons_prod_lock = aie.lock(%tile_0_4, 2) {init = 2 : i32, sym_name = "of_in_mainA3_cons_prod_lock"}
    %of_in_mainA3_cons_cons_lock = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "of_in_mainA3_cons_cons_lock"}
    %of_in_mainB2_cons_buff_0 = aie.buffer(%tile_3_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB2_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainB2_cons_buff_1 = aie.buffer(%tile_3_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB2_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainB2_cons_prod_lock = aie.lock(%tile_3_5, 2) {init = 2 : i32, sym_name = "of_in_mainB2_cons_prod_lock"}
    %of_in_mainB2_cons_cons_lock = aie.lock(%tile_3_5, 3) {init = 0 : i32, sym_name = "of_in_mainB2_cons_cons_lock"}
    %of_in_mainA2_cons_buff_0 = aie.buffer(%tile_0_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA2_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainA2_cons_buff_1 = aie.buffer(%tile_0_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA2_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainA2_cons_prod_lock = aie.lock(%tile_0_5, 2) {init = 2 : i32, sym_name = "of_in_mainA2_cons_prod_lock"}
    %of_in_mainA2_cons_cons_lock = aie.lock(%tile_0_5, 3) {init = 0 : i32, sym_name = "of_in_mainA2_cons_cons_lock"}
    %of_in_mainB1_cons_buff_0 = aie.buffer(%tile_3_2) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB1_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainB1_cons_buff_1 = aie.buffer(%tile_3_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB1_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainB1_cons_prod_lock = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "of_in_mainB1_cons_prod_lock"}
    %of_in_mainB1_cons_cons_lock = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "of_in_mainB1_cons_cons_lock"}
    %of_in_mainA1_cons_buff_0 = aie.buffer(%tile_0_2) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA1_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainA1_cons_buff_1 = aie.buffer(%tile_0_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA1_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainA1_cons_prod_lock = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "of_in_mainA1_cons_prod_lock"}
    %of_in_mainA1_cons_cons_lock = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "of_in_mainA1_cons_cons_lock"}
    %of_in_mainB0_cons_buff_0 = aie.buffer(%tile_2_3) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB0_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainB0_cons_buff_1 = aie.buffer(%tile_2_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB0_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainB0_cons_prod_lock = aie.lock(%tile_2_3, 0) {init = 2 : i32, sym_name = "of_in_mainB0_cons_prod_lock"}
    %of_in_mainB0_cons_cons_lock = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "of_in_mainB0_cons_cons_lock"}
    %of_in_mainA0_cons_buff_0 = aie.buffer(%tile_1_3) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA0_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainA0_cons_buff_1 = aie.buffer(%tile_1_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA0_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainA0_cons_prod_lock = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "of_in_mainA0_cons_prod_lock"}
    %of_in_mainA0_cons_cons_lock = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "of_in_mainA0_cons_cons_lock"}
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
    %in0_0_cons_buff_0 = aie.buffer(%tile_0_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_0_cons_buff_0"} : memref<6xbf16> 
    %in0_0_cons_buff_1 = aie.buffer(%tile_0_5) {address = 10244 : i32, mem_bank = 0 : i32, sym_name = "in0_0_cons_buff_1"} : memref<6xbf16> 
    %in0_0_cons_prod_lock = aie.lock(%tile_0_5, 0) {init = 2 : i32, sym_name = "in0_0_cons_prod_lock"}
    %in0_0_cons_cons_lock = aie.lock(%tile_0_5, 1) {init = 0 : i32, sym_name = "in0_0_cons_cons_lock"}
    %in0_1_cons_buff_0 = aie.buffer(%tile_0_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_1_cons_buff_0"} : memref<6xbf16> 
    %in0_1_cons_buff_1 = aie.buffer(%tile_0_4) {address = 10244 : i32, mem_bank = 0 : i32, sym_name = "in0_1_cons_buff_1"} : memref<6xbf16> 
    %in0_1_cons_prod_lock = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "in0_1_cons_prod_lock"}
    %in0_1_cons_cons_lock = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "in0_1_cons_cons_lock"}
    %in0_2_cons_buff_0 = aie.buffer(%tile_0_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_2_cons_buff_0"} : memref<6xbf16> 
    %in0_2_cons_buff_1 = aie.buffer(%tile_0_3) {address = 10244 : i32, mem_bank = 0 : i32, sym_name = "in0_2_cons_buff_1"} : memref<6xbf16> 
    %in0_2_cons_prod_lock = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "in0_2_cons_prod_lock"}
    %in0_2_cons_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "in0_2_cons_cons_lock"}
    %in0_3_cons_buff_0 = aie.buffer(%tile_3_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_3_cons_buff_0"} : memref<6xbf16> 
    %in0_3_cons_buff_1 = aie.buffer(%tile_3_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_3_cons_buff_1"} : memref<6xbf16> 
    %in0_3_cons_prod_lock = aie.lock(%tile_3_5, 0) {init = 2 : i32, sym_name = "in0_3_cons_prod_lock"}
    %in0_3_cons_cons_lock = aie.lock(%tile_3_5, 1) {init = 0 : i32, sym_name = "in0_3_cons_cons_lock"}
    %in0_4_cons_buff_0 = aie.buffer(%tile_3_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_4_cons_buff_0"} : memref<6xbf16> 
    %in0_4_cons_buff_1 = aie.buffer(%tile_3_4) {address = 10244 : i32, mem_bank = 0 : i32, sym_name = "in0_4_cons_buff_1"} : memref<6xbf16> 
    %in0_4_cons_prod_lock = aie.lock(%tile_3_4, 0) {init = 2 : i32, sym_name = "in0_4_cons_prod_lock"}
    %in0_4_cons_cons_lock = aie.lock(%tile_3_4, 1) {init = 0 : i32, sym_name = "in0_4_cons_cons_lock"}
    %in0_5_cons_buff_0 = aie.buffer(%tile_3_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_5_cons_buff_0"} : memref<6xbf16> 
    %in0_5_cons_buff_1 = aie.buffer(%tile_3_3) {address = 10244 : i32, mem_bank = 0 : i32, sym_name = "in0_5_cons_buff_1"} : memref<6xbf16> 
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
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_2_3, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 1, %tile_0_2, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 1, %tile_3_2, DMA : 0)
    aie.flow(%mem_tile_0_1, DMA : 2, %tile_0_5, DMA : 1)
    aie.flow(%mem_tile_3_1, DMA : 2, %tile_3_5, DMA : 1)
    aie.flow(%mem_tile_0_1, DMA : 3, %tile_0_4, DMA : 1)
    aie.flow(%mem_tile_3_1, DMA : 3, %tile_3_4, DMA : 1)
    aie.flow(%mem_tile_0_1, DMA : 4, %tile_0_3, DMA : 1)
    aie.flow(%mem_tile_3_1, DMA : 4, %tile_3_3, DMA : 1)
    aie.flow(%tile_0_4, DMA : 0, %tile_1_5, DMA : 0)
    aie.flow(%tile_0_3, DMA : 0, %tile_1_4, DMA : 0)
    aie.flow(%tile_3_4, DMA : 0, %tile_2_5, DMA : 0)
    aie.flow(%tile_3_3, DMA : 0, %tile_2_4, DMA : 0)
    aie.flow(%tile_1_4, DMA : 0, %tile_0_2, DMA : 1)
    aie.flow(%tile_1_4, DMA : 0, %tile_1_3, DMA : 1)
    aie.flow(%tile_2_4, DMA : 0, %tile_3_2, DMA : 1)
    aie.flow(%tile_2_4, DMA : 0, %tile_2_3, DMA : 1)
    aie.flow(%tile_2_2, DMA : 0, %shim_noc_tile_2_0, DMA : 0)
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c14 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c8192 = arith.constant 8192 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8192 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainA2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c8192_4 = arith.constant 8192 : index
      %c1_5 = arith.constant 1 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb6(%c0_3 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8192_4 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u0_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_6 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainA2_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.end
    }
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c14 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c8192 = arith.constant 8192 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8192 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainA3_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c8192_4 = arith.constant 8192 : index
      %c1_5 = arith.constant 1 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb6(%c0_3 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8192_4 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      aie.use_lock(%of_add_v0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v0_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_6 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainA3_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.end
    }
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c14 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c8192 = arith.constant 8192 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8192 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainA4_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c8192_4 = arith.constant 8192 : index
      %c1_5 = arith.constant 1 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb6(%c0_3 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8192_4 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      aie.use_lock(%of_add_w0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w0_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_6 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainA4_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.end
    }
    %core_1_5 = aie.core(%tile_1_5) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c14 : index
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
      aie.use_lock(%of_add_u0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_uv0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_uv0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, Release, 1)
      aie.use_lock(%of_add_v0_cons_prod_lock, Release, 1)
      aie.use_lock(%of_add_u0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_uv0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_uv0_cons_lock, Release, 1)
      aie.use_lock(%of_add_u0_prod_lock, Release, 1)
      aie.use_lock(%of_add_v0_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    }
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c14 : index
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
      aie.use_lock(%of_add_uv0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add2real0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add2real0_cons_lock, Release, 1)
      aie.use_lock(%of_add_uv0_prod_lock, Release, 1)
      aie.use_lock(%of_add_w0_cons_prod_lock, Release, 1)
      aie.use_lock(%of_add_uv0_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add2real0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add2real0_cons_lock, Release, 1)
      aie.use_lock(%of_add_uv0_prod_lock, Release, 1)
      aie.use_lock(%of_add_w0_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    }
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c14 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c8192 = arith.constant 8192 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8192 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainB2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c8192_4 = arith.constant 8192 : index
      %c1_5 = arith.constant 1 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb6(%c0_3 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8192_4 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_u1_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_6 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainB2_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.end
    }
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c14 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c8192 = arith.constant 8192 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8192 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainB3_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c8192_4 = arith.constant 8192 : index
      %c1_5 = arith.constant 1 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb6(%c0_3 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8192_4 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      aie.use_lock(%of_add_v1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v1_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_6 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainB3_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.end
    }
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c14 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c8192 = arith.constant 8192 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8192 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainB4_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c8192_4 = arith.constant 8192 : index
      %c1_5 = arith.constant 1 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb6(%c0_3 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c8192_4 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      aie.use_lock(%of_add_w1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w1_cons_lock, Release, 1)
      %7 = arith.addi %5, %c2_6 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainB4_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.end
    }
    %core_2_5 = aie.core(%tile_2_5) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c14 : index
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
      aie.use_lock(%of_add_u1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_uv1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_uv1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, Release, 1)
      aie.use_lock(%of_add_v1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_add_u1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_v1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_uv1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_uv1_cons_lock, Release, 1)
      aie.use_lock(%of_add_u1_prod_lock, Release, 1)
      aie.use_lock(%of_add_v1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    }
    %core_2_4 = aie.core(%tile_2_4) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c14 : index
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
      aie.use_lock(%of_add_uv1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add2real1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add2real1_cons_lock, Release, 1)
      aie.use_lock(%of_add_uv1_prod_lock, Release, 1)
      aie.use_lock(%of_add_w1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_add_uv1_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add_w1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add2real1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_add2real1_cons_lock, Release, 1)
      aie.use_lock(%of_add_uv1_prod_lock, Release, 1)
      aie.use_lock(%of_add_w1_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    }
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c14 = arith.constant 14 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c14 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c8192 = arith.constant 8192 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8192 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    }
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
      aie.dma_bd(%in0_0_cons_buff_0 : memref<6xbf16>, 0, 6) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_1 : memref<6xbf16>, 0, 6) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_in_mainA2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA2_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA2_cons_buff_1 : memref<4610xbf16>, 0, 4610) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_0 : memref<6xbf16>, 0, 6) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_1 : memref<6xbf16>, 0, 6) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_in_mainA3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA3_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA3_cons_buff_1 : memref<4610xbf16>, 0, 4610) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%of_add_v0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add_v0_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_add_v0_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_0 : memref<6xbf16>, 0, 6) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_1 : memref<6xbf16>, 0, 6) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_in_mainA4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA4_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA4_cons_buff_1 : memref<4610xbf16>, 0, 4610) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%of_add_w0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add_w0_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_add_w0_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_3_5 = aie.mem(%tile_3_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_0 : memref<6xbf16>, 0, 6) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_1 : memref<6xbf16>, 0, 6) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_in_mainB2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB2_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainB2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainB2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB2_cons_buff_1 : memref<4610xbf16>, 0, 4610) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainB2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_4 = aie.mem(%tile_3_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_0 : memref<6xbf16>, 0, 6) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_1 : memref<6xbf16>, 0, 6) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_in_mainB3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB3_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainB3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainB3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB3_cons_buff_1 : memref<4610xbf16>, 0, 4610) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainB3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%of_add_v1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add_v1_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_add_v1_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      aie.end
    }
    %mem_3_3 = aie.mem(%tile_3_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_0 : memref<6xbf16>, 0, 6) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_1 : memref<6xbf16>, 0, 6) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_in_mainB4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB4_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainB4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainB4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB4_cons_buff_1 : memref<4610xbf16>, 0, 4610) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainB4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%of_add_w1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add_w1_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 4 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_add_w1_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
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
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_mainA0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA0_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_mainA0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA0_cons_buff_1 : memref<4610xbf16>, 0, 4610) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_mainA0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_add2real0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2real0_0_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_add2real0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_add2real0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2real0_0_cons_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_add2real0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_mainB0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB0_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_mainB0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB0_cons_buff_1 : memref<4610xbf16>, 0, 4610) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_mainB0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_add2real1_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2real1_0_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_add2real1_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_add2real1_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2real1_0_cons_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_add2real1_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_mainA1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA1_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_mainA1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA1_cons_buff_1 : memref<4610xbf16>, 0, 4610) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_mainA1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_add2real0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2real0_1_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_add2real0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_add2real0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2real0_1_cons_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_add2real0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_mainB1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB1_cons_buff_0 : memref<4610xbf16>, 0, 4610) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_mainB1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB1_cons_buff_1 : memref<4610xbf16>, 0, 4610) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_mainB1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_add2real1_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2real1_1_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_add2real1_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_add2real1_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2real1_1_cons_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_add2real1_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
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
    %mem_1_4 = aie.mem(%tile_1_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_add_w0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add_w0_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_add_w0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb3, ^bb5)
    ^bb3:  // 2 preds: ^bb2, ^bb4
      aie.use_lock(%of_add2real0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2real0_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_add2real0_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_add2real0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2real0_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 2 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_add2real0_prod_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb5:  // pred: ^bb2
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
    %mem_2_4 = aie.mem(%tile_2_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%of_add_w1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add_w1_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_add_w1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb3, ^bb5)
    ^bb3:  // 2 preds: ^bb2, ^bb4
      aie.use_lock(%of_add2real1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2real1_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_add2real1_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%of_add2real1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_add2real1_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 2 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_add2real1_prod_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb5:  // pred: ^bb2
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
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
