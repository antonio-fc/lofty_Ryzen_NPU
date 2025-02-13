module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<1024xbf16>
    memref.global "public" @out : memref<1024xbf16>
    memref.global "public" @of_in_mainA13_cons : memref<3840xbf16>
    memref.global "public" @of_in_mainA13 : memref<3840xbf16>
    memref.global "public" @of_in_mainA12_cons : memref<3840xbf16>
    memref.global "public" @of_in_mainA12 : memref<3840xbf16>
    memref.global "public" @of_in_mainA11_cons : memref<3840xbf16>
    memref.global "public" @of_in_mainA11 : memref<3840xbf16>
    memref.global "public" @of_in_mainA03_cons : memref<3840xbf16>
    memref.global "public" @of_in_mainA03 : memref<3840xbf16>
    memref.global "public" @of_in_mainA02_cons : memref<3840xbf16>
    memref.global "public" @of_in_mainA02 : memref<3840xbf16>
    memref.global "public" @of_in_mainA01_cons : memref<3840xbf16>
    memref.global "public" @of_in_mainA01 : memref<3840xbf16>
    memref.global "public" @in2_cons : memref<23040xbf16>
    memref.global "public" @in2 : memref<23040xbf16>
    memref.global "public" @in1_cons : memref<23040xbf16>
    memref.global "public" @in1 : memref<23040xbf16>
    memref.global "public" @in0_0_cons : memref<2xbf16>
    memref.global "public" @in0_1_cons : memref<2xbf16>
    memref.global "public" @in0_2_cons : memref<2xbf16>
    memref.global "public" @in0_3_cons : memref<2xbf16>
    memref.global "public" @in0_4_cons : memref<2xbf16>
    memref.global "public" @in0_5_cons : memref<2xbf16>
    memref.global "public" @in0 : memref<2xbf16>
    func.func private @vector_scale(memref<1024xbf16>, memref<1024xbf16>, memref<2xbf16>, i32)
    func.func private @passthrough(memref<1024xbf16>, memref<1024xbf16>, i32)
    func.func private @vector_add(memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32)
    func.func private @vector_mult(memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32)
    func.func private @mean(memref<1024xbf16>, memref<2xbf16>, i32, i32)
    func.func private @sin_float_1024(memref<1024xbf16>, memref<1024xbf16>, i32)
    func.func private @cos_float_1024(memref<1024xbf16>, memref<1024xbf16>, i32)
    func.func private @vector_sub(memref<1024xbf16>, memref<1024xbf16>, memref<1024xbf16>, i32)
    %shim_noc_tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_0_5 = aie.tile(0, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %shim_noc_tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_1_1 = aie.tile(1, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_1_4 = aie.tile(1, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_1_5 = aie.tile(1, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %shim_noc_tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_2_1 = aie.tile(2, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %shim_noc_tile_3_0 = aie.tile(3, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %out_buff_0 = aie.buffer(%tile_3_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<1024xbf16> 
    %out_buff_1 = aie.buffer(%tile_3_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out_buff_1"} : memref<1024xbf16> 
    %out_prod_lock = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "out_prod_lock"}
    %out_cons_lock = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "out_cons_lock"}
    %of_in_mainA13_cons_buff_0 = aie.buffer(%tile_1_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA13_cons_buff_0"} : memref<3840xbf16> 
    %of_in_mainA13_cons_buff_1 = aie.buffer(%tile_1_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA13_cons_buff_1"} : memref<3840xbf16> 
    %of_in_mainA13_cons_prod_lock = aie.lock(%tile_1_5, 2) {init = 2 : i32, sym_name = "of_in_mainA13_cons_prod_lock"}
    %of_in_mainA13_cons_cons_lock = aie.lock(%tile_1_5, 3) {init = 0 : i32, sym_name = "of_in_mainA13_cons_cons_lock"}
    %of_in_mainA12_cons_buff_0 = aie.buffer(%tile_1_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA12_cons_buff_0"} : memref<3840xbf16> 
    %of_in_mainA12_cons_buff_1 = aie.buffer(%tile_1_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA12_cons_buff_1"} : memref<3840xbf16> 
    %of_in_mainA12_cons_prod_lock = aie.lock(%tile_1_4, 2) {init = 2 : i32, sym_name = "of_in_mainA12_cons_prod_lock"}
    %of_in_mainA12_cons_cons_lock = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "of_in_mainA12_cons_cons_lock"}
    %of_in_mainA11_cons_buff_0 = aie.buffer(%tile_1_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA11_cons_buff_0"} : memref<3840xbf16> 
    %of_in_mainA11_cons_buff_1 = aie.buffer(%tile_1_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA11_cons_buff_1"} : memref<3840xbf16> 
    %of_in_mainA11_cons_prod_lock = aie.lock(%tile_1_3, 2) {init = 2 : i32, sym_name = "of_in_mainA11_cons_prod_lock"}
    %of_in_mainA11_cons_cons_lock = aie.lock(%tile_1_3, 3) {init = 0 : i32, sym_name = "of_in_mainA11_cons_cons_lock"}
    %of_in_mainA03_cons_buff_0 = aie.buffer(%tile_0_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA03_cons_buff_0"} : memref<3840xbf16> 
    %of_in_mainA03_cons_buff_1 = aie.buffer(%tile_0_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA03_cons_buff_1"} : memref<3840xbf16> 
    %of_in_mainA03_cons_prod_lock = aie.lock(%tile_0_5, 2) {init = 2 : i32, sym_name = "of_in_mainA03_cons_prod_lock"}
    %of_in_mainA03_cons_cons_lock = aie.lock(%tile_0_5, 3) {init = 0 : i32, sym_name = "of_in_mainA03_cons_cons_lock"}
    %of_in_mainA02_cons_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA02_cons_buff_0"} : memref<3840xbf16> 
    %of_in_mainA02_cons_buff_1 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA02_cons_buff_1"} : memref<3840xbf16> 
    %of_in_mainA02_cons_prod_lock = aie.lock(%tile_0_4, 2) {init = 2 : i32, sym_name = "of_in_mainA02_cons_prod_lock"}
    %of_in_mainA02_cons_cons_lock = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "of_in_mainA02_cons_cons_lock"}
    %of_in_mainA01_cons_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA01_cons_buff_0"} : memref<3840xbf16> 
    %of_in_mainA01_cons_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA01_cons_buff_1"} : memref<3840xbf16> 
    %of_in_mainA01_cons_prod_lock = aie.lock(%tile_0_3, 2) {init = 2 : i32, sym_name = "of_in_mainA01_cons_prod_lock"}
    %of_in_mainA01_cons_cons_lock = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "of_in_mainA01_cons_cons_lock"}
    %in2_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_0"} : memref<23040xbf16> 
    %in2_cons_prod_lock = aie.lock(%mem_tile_2_1, 0) {init = 1 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in1_cons_buff_0"} : memref<23040xbf16> 
    %in1_cons_prod_lock = aie.lock(%mem_tile_1_1, 0) {init = 6 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in0_0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_0_cons_buff_0"} : memref<2xbf16> 
    %in0_0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_0_cons_buff_1"} : memref<2xbf16> 
    %in0_0_cons_buff_2 = aie.buffer(%tile_0_3) {address = 8704 : i32, mem_bank = 0 : i32, sym_name = "in0_0_cons_buff_2"} : memref<2xbf16> 
    %in0_0_cons_buff_3 = aie.buffer(%tile_0_3) {address = 24064 : i32, mem_bank = 1 : i32, sym_name = "in0_0_cons_buff_3"} : memref<2xbf16> 
    %in0_0_cons_buff_4 = aie.buffer(%tile_0_3) {address = 32772 : i32, mem_bank = 2 : i32, sym_name = "in0_0_cons_buff_4"} : memref<2xbf16> 
    %in0_0_cons_buff_5 = aie.buffer(%tile_0_3) {address = 49156 : i32, mem_bank = 3 : i32, sym_name = "in0_0_cons_buff_5"} : memref<2xbf16> 
    %in0_0_cons_buff_6 = aie.buffer(%tile_0_3) {address = 8708 : i32, mem_bank = 0 : i32, sym_name = "in0_0_cons_buff_6"} : memref<2xbf16> 
    %in0_0_cons_buff_7 = aie.buffer(%tile_0_3) {address = 24068 : i32, mem_bank = 1 : i32, sym_name = "in0_0_cons_buff_7"} : memref<2xbf16> 
    %in0_0_cons_buff_8 = aie.buffer(%tile_0_3) {address = 32776 : i32, mem_bank = 2 : i32, sym_name = "in0_0_cons_buff_8"} : memref<2xbf16> 
    %in0_0_cons_buff_9 = aie.buffer(%tile_0_3) {address = 49160 : i32, mem_bank = 3 : i32, sym_name = "in0_0_cons_buff_9"} : memref<2xbf16> 
    %in0_0_cons_buff_10 = aie.buffer(%tile_0_3) {address = 8712 : i32, mem_bank = 0 : i32, sym_name = "in0_0_cons_buff_10"} : memref<2xbf16> 
    %in0_0_cons_buff_11 = aie.buffer(%tile_0_3) {address = 24072 : i32, mem_bank = 1 : i32, sym_name = "in0_0_cons_buff_11"} : memref<2xbf16> 
    %in0_0_cons_buff_12 = aie.buffer(%tile_0_3) {address = 32780 : i32, mem_bank = 2 : i32, sym_name = "in0_0_cons_buff_12"} : memref<2xbf16> 
    %in0_0_cons_prod_lock = aie.lock(%tile_0_3, 0) {init = 13 : i32, sym_name = "in0_0_cons_prod_lock"}
    %in0_0_cons_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "in0_0_cons_cons_lock"}
    %in0_1_cons_buff_0 = aie.buffer(%tile_0_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_1_cons_buff_0"} : memref<2xbf16> 
    %in0_1_cons_buff_1 = aie.buffer(%tile_0_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_1_cons_buff_1"} : memref<2xbf16> 
    %in0_1_cons_buff_2 = aie.buffer(%tile_0_4) {address = 8704 : i32, mem_bank = 0 : i32, sym_name = "in0_1_cons_buff_2"} : memref<2xbf16> 
    %in0_1_cons_buff_3 = aie.buffer(%tile_0_4) {address = 24064 : i32, mem_bank = 1 : i32, sym_name = "in0_1_cons_buff_3"} : memref<2xbf16> 
    %in0_1_cons_buff_4 = aie.buffer(%tile_0_4) {address = 32772 : i32, mem_bank = 2 : i32, sym_name = "in0_1_cons_buff_4"} : memref<2xbf16> 
    %in0_1_cons_buff_5 = aie.buffer(%tile_0_4) {address = 49156 : i32, mem_bank = 3 : i32, sym_name = "in0_1_cons_buff_5"} : memref<2xbf16> 
    %in0_1_cons_buff_6 = aie.buffer(%tile_0_4) {address = 8708 : i32, mem_bank = 0 : i32, sym_name = "in0_1_cons_buff_6"} : memref<2xbf16> 
    %in0_1_cons_buff_7 = aie.buffer(%tile_0_4) {address = 24068 : i32, mem_bank = 1 : i32, sym_name = "in0_1_cons_buff_7"} : memref<2xbf16> 
    %in0_1_cons_buff_8 = aie.buffer(%tile_0_4) {address = 32776 : i32, mem_bank = 2 : i32, sym_name = "in0_1_cons_buff_8"} : memref<2xbf16> 
    %in0_1_cons_buff_9 = aie.buffer(%tile_0_4) {address = 49160 : i32, mem_bank = 3 : i32, sym_name = "in0_1_cons_buff_9"} : memref<2xbf16> 
    %in0_1_cons_buff_10 = aie.buffer(%tile_0_4) {address = 8712 : i32, mem_bank = 0 : i32, sym_name = "in0_1_cons_buff_10"} : memref<2xbf16> 
    %in0_1_cons_buff_11 = aie.buffer(%tile_0_4) {address = 24072 : i32, mem_bank = 1 : i32, sym_name = "in0_1_cons_buff_11"} : memref<2xbf16> 
    %in0_1_cons_buff_12 = aie.buffer(%tile_0_4) {address = 32780 : i32, mem_bank = 2 : i32, sym_name = "in0_1_cons_buff_12"} : memref<2xbf16> 
    %in0_1_cons_prod_lock = aie.lock(%tile_0_4, 0) {init = 13 : i32, sym_name = "in0_1_cons_prod_lock"}
    %in0_1_cons_cons_lock = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "in0_1_cons_cons_lock"}
    %in0_2_cons_buff_0 = aie.buffer(%tile_0_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_2_cons_buff_0"} : memref<2xbf16> 
    %in0_2_cons_buff_1 = aie.buffer(%tile_0_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_2_cons_buff_1"} : memref<2xbf16> 
    %in0_2_cons_buff_2 = aie.buffer(%tile_0_5) {address = 8704 : i32, mem_bank = 0 : i32, sym_name = "in0_2_cons_buff_2"} : memref<2xbf16> 
    %in0_2_cons_buff_3 = aie.buffer(%tile_0_5) {address = 24064 : i32, mem_bank = 1 : i32, sym_name = "in0_2_cons_buff_3"} : memref<2xbf16> 
    %in0_2_cons_buff_4 = aie.buffer(%tile_0_5) {address = 32772 : i32, mem_bank = 2 : i32, sym_name = "in0_2_cons_buff_4"} : memref<2xbf16> 
    %in0_2_cons_buff_5 = aie.buffer(%tile_0_5) {address = 49156 : i32, mem_bank = 3 : i32, sym_name = "in0_2_cons_buff_5"} : memref<2xbf16> 
    %in0_2_cons_buff_6 = aie.buffer(%tile_0_5) {address = 8708 : i32, mem_bank = 0 : i32, sym_name = "in0_2_cons_buff_6"} : memref<2xbf16> 
    %in0_2_cons_buff_7 = aie.buffer(%tile_0_5) {address = 24068 : i32, mem_bank = 1 : i32, sym_name = "in0_2_cons_buff_7"} : memref<2xbf16> 
    %in0_2_cons_buff_8 = aie.buffer(%tile_0_5) {address = 32776 : i32, mem_bank = 2 : i32, sym_name = "in0_2_cons_buff_8"} : memref<2xbf16> 
    %in0_2_cons_buff_9 = aie.buffer(%tile_0_5) {address = 49160 : i32, mem_bank = 3 : i32, sym_name = "in0_2_cons_buff_9"} : memref<2xbf16> 
    %in0_2_cons_buff_10 = aie.buffer(%tile_0_5) {address = 8712 : i32, mem_bank = 0 : i32, sym_name = "in0_2_cons_buff_10"} : memref<2xbf16> 
    %in0_2_cons_buff_11 = aie.buffer(%tile_0_5) {address = 24072 : i32, mem_bank = 1 : i32, sym_name = "in0_2_cons_buff_11"} : memref<2xbf16> 
    %in0_2_cons_buff_12 = aie.buffer(%tile_0_5) {address = 32780 : i32, mem_bank = 2 : i32, sym_name = "in0_2_cons_buff_12"} : memref<2xbf16> 
    %in0_2_cons_prod_lock = aie.lock(%tile_0_5, 0) {init = 13 : i32, sym_name = "in0_2_cons_prod_lock"}
    %in0_2_cons_cons_lock = aie.lock(%tile_0_5, 1) {init = 0 : i32, sym_name = "in0_2_cons_cons_lock"}
    %in0_3_cons_buff_0 = aie.buffer(%tile_1_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_3_cons_buff_0"} : memref<2xbf16> 
    %in0_3_cons_buff_1 = aie.buffer(%tile_1_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_3_cons_buff_1"} : memref<2xbf16> 
    %in0_3_cons_buff_2 = aie.buffer(%tile_1_3) {address = 8704 : i32, mem_bank = 0 : i32, sym_name = "in0_3_cons_buff_2"} : memref<2xbf16> 
    %in0_3_cons_buff_3 = aie.buffer(%tile_1_3) {address = 24064 : i32, mem_bank = 1 : i32, sym_name = "in0_3_cons_buff_3"} : memref<2xbf16> 
    %in0_3_cons_buff_4 = aie.buffer(%tile_1_3) {address = 32772 : i32, mem_bank = 2 : i32, sym_name = "in0_3_cons_buff_4"} : memref<2xbf16> 
    %in0_3_cons_buff_5 = aie.buffer(%tile_1_3) {address = 49156 : i32, mem_bank = 3 : i32, sym_name = "in0_3_cons_buff_5"} : memref<2xbf16> 
    %in0_3_cons_buff_6 = aie.buffer(%tile_1_3) {address = 8708 : i32, mem_bank = 0 : i32, sym_name = "in0_3_cons_buff_6"} : memref<2xbf16> 
    %in0_3_cons_buff_7 = aie.buffer(%tile_1_3) {address = 24068 : i32, mem_bank = 1 : i32, sym_name = "in0_3_cons_buff_7"} : memref<2xbf16> 
    %in0_3_cons_buff_8 = aie.buffer(%tile_1_3) {address = 32776 : i32, mem_bank = 2 : i32, sym_name = "in0_3_cons_buff_8"} : memref<2xbf16> 
    %in0_3_cons_buff_9 = aie.buffer(%tile_1_3) {address = 49160 : i32, mem_bank = 3 : i32, sym_name = "in0_3_cons_buff_9"} : memref<2xbf16> 
    %in0_3_cons_buff_10 = aie.buffer(%tile_1_3) {address = 8712 : i32, mem_bank = 0 : i32, sym_name = "in0_3_cons_buff_10"} : memref<2xbf16> 
    %in0_3_cons_buff_11 = aie.buffer(%tile_1_3) {address = 24072 : i32, mem_bank = 1 : i32, sym_name = "in0_3_cons_buff_11"} : memref<2xbf16> 
    %in0_3_cons_buff_12 = aie.buffer(%tile_1_3) {address = 32780 : i32, mem_bank = 2 : i32, sym_name = "in0_3_cons_buff_12"} : memref<2xbf16> 
    %in0_3_cons_prod_lock = aie.lock(%tile_1_3, 0) {init = 13 : i32, sym_name = "in0_3_cons_prod_lock"}
    %in0_3_cons_cons_lock = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "in0_3_cons_cons_lock"}
    %in0_4_cons_buff_0 = aie.buffer(%tile_1_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_4_cons_buff_0"} : memref<2xbf16> 
    %in0_4_cons_buff_1 = aie.buffer(%tile_1_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_4_cons_buff_1"} : memref<2xbf16> 
    %in0_4_cons_buff_2 = aie.buffer(%tile_1_4) {address = 8704 : i32, mem_bank = 0 : i32, sym_name = "in0_4_cons_buff_2"} : memref<2xbf16> 
    %in0_4_cons_buff_3 = aie.buffer(%tile_1_4) {address = 24064 : i32, mem_bank = 1 : i32, sym_name = "in0_4_cons_buff_3"} : memref<2xbf16> 
    %in0_4_cons_buff_4 = aie.buffer(%tile_1_4) {address = 32772 : i32, mem_bank = 2 : i32, sym_name = "in0_4_cons_buff_4"} : memref<2xbf16> 
    %in0_4_cons_buff_5 = aie.buffer(%tile_1_4) {address = 49156 : i32, mem_bank = 3 : i32, sym_name = "in0_4_cons_buff_5"} : memref<2xbf16> 
    %in0_4_cons_buff_6 = aie.buffer(%tile_1_4) {address = 8708 : i32, mem_bank = 0 : i32, sym_name = "in0_4_cons_buff_6"} : memref<2xbf16> 
    %in0_4_cons_buff_7 = aie.buffer(%tile_1_4) {address = 24068 : i32, mem_bank = 1 : i32, sym_name = "in0_4_cons_buff_7"} : memref<2xbf16> 
    %in0_4_cons_buff_8 = aie.buffer(%tile_1_4) {address = 32776 : i32, mem_bank = 2 : i32, sym_name = "in0_4_cons_buff_8"} : memref<2xbf16> 
    %in0_4_cons_buff_9 = aie.buffer(%tile_1_4) {address = 49160 : i32, mem_bank = 3 : i32, sym_name = "in0_4_cons_buff_9"} : memref<2xbf16> 
    %in0_4_cons_buff_10 = aie.buffer(%tile_1_4) {address = 8712 : i32, mem_bank = 0 : i32, sym_name = "in0_4_cons_buff_10"} : memref<2xbf16> 
    %in0_4_cons_buff_11 = aie.buffer(%tile_1_4) {address = 24072 : i32, mem_bank = 1 : i32, sym_name = "in0_4_cons_buff_11"} : memref<2xbf16> 
    %in0_4_cons_buff_12 = aie.buffer(%tile_1_4) {address = 32780 : i32, mem_bank = 2 : i32, sym_name = "in0_4_cons_buff_12"} : memref<2xbf16> 
    %in0_4_cons_prod_lock = aie.lock(%tile_1_4, 0) {init = 13 : i32, sym_name = "in0_4_cons_prod_lock"}
    %in0_4_cons_cons_lock = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "in0_4_cons_cons_lock"}
    %in0_5_cons_buff_0 = aie.buffer(%tile_1_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_5_cons_buff_0"} : memref<2xbf16> 
    %in0_5_cons_buff_1 = aie.buffer(%tile_1_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_5_cons_buff_1"} : memref<2xbf16> 
    %in0_5_cons_buff_2 = aie.buffer(%tile_1_5) {address = 8704 : i32, mem_bank = 0 : i32, sym_name = "in0_5_cons_buff_2"} : memref<2xbf16> 
    %in0_5_cons_buff_3 = aie.buffer(%tile_1_5) {address = 24064 : i32, mem_bank = 1 : i32, sym_name = "in0_5_cons_buff_3"} : memref<2xbf16> 
    %in0_5_cons_buff_4 = aie.buffer(%tile_1_5) {address = 32772 : i32, mem_bank = 2 : i32, sym_name = "in0_5_cons_buff_4"} : memref<2xbf16> 
    %in0_5_cons_buff_5 = aie.buffer(%tile_1_5) {address = 49156 : i32, mem_bank = 3 : i32, sym_name = "in0_5_cons_buff_5"} : memref<2xbf16> 
    %in0_5_cons_buff_6 = aie.buffer(%tile_1_5) {address = 8708 : i32, mem_bank = 0 : i32, sym_name = "in0_5_cons_buff_6"} : memref<2xbf16> 
    %in0_5_cons_buff_7 = aie.buffer(%tile_1_5) {address = 24068 : i32, mem_bank = 1 : i32, sym_name = "in0_5_cons_buff_7"} : memref<2xbf16> 
    %in0_5_cons_buff_8 = aie.buffer(%tile_1_5) {address = 32776 : i32, mem_bank = 2 : i32, sym_name = "in0_5_cons_buff_8"} : memref<2xbf16> 
    %in0_5_cons_buff_9 = aie.buffer(%tile_1_5) {address = 49160 : i32, mem_bank = 3 : i32, sym_name = "in0_5_cons_buff_9"} : memref<2xbf16> 
    %in0_5_cons_buff_10 = aie.buffer(%tile_1_5) {address = 8712 : i32, mem_bank = 0 : i32, sym_name = "in0_5_cons_buff_10"} : memref<2xbf16> 
    %in0_5_cons_buff_11 = aie.buffer(%tile_1_5) {address = 24072 : i32, mem_bank = 1 : i32, sym_name = "in0_5_cons_buff_11"} : memref<2xbf16> 
    %in0_5_cons_buff_12 = aie.buffer(%tile_1_5) {address = 32780 : i32, mem_bank = 2 : i32, sym_name = "in0_5_cons_buff_12"} : memref<2xbf16> 
    %in0_5_cons_prod_lock = aie.lock(%tile_1_5, 0) {init = 13 : i32, sym_name = "in0_5_cons_prod_lock"}
    %in0_5_cons_cons_lock = aie.lock(%tile_1_5, 1) {init = 0 : i32, sym_name = "in0_5_cons_cons_lock"}
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %tile_1_5, DMA : 0)
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %tile_1_4, DMA : 0)
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %tile_1_3, DMA : 0)
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %tile_0_5, DMA : 0)
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %tile_0_4, DMA : 0)
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %tile_0_3, DMA : 0)
    aie.flow(%shim_noc_tile_1_0, DMA : 0, %mem_tile_1_1, DMA : 0)
    aie.flow(%shim_noc_tile_2_0, DMA : 0, %mem_tile_2_1, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 0, %tile_0_3, DMA : 1)
    aie.flow(%mem_tile_1_1, DMA : 1, %tile_0_4, DMA : 1)
    aie.flow(%mem_tile_1_1, DMA : 2, %tile_0_5, DMA : 1)
    aie.flow(%mem_tile_1_1, DMA : 3, %tile_1_3, DMA : 1)
    aie.flow(%mem_tile_1_1, DMA : 4, %tile_1_4, DMA : 1)
    aie.flow(%mem_tile_1_1, DMA : 5, %tile_1_5, DMA : 1)
    aie.flow(%tile_3_2, DMA : 0, %shim_noc_tile_3_0, DMA : 0)
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA01_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA01_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA01_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA01_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainA01_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA01_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA02_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA02_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA02_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA02_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainA02_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA02_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA03_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA03_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA03_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA03_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainA03_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA03_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA11_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainA11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA11_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA12_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA12_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA12_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA12_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainA12_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA12_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_1_5 = aie.core(%tile_1_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA13_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA13_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA13_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA13_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainA13_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_in_mainA13_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    memref.global "private" constant @blockwrite_data_0 : memref<8xi32> = dense<[1, 0, 0, 0, -2147483648, 0, 0, 33554432]>
    memref.global "private" constant @blockwrite_data_1 : memref<8xi32> = dense<[11520, 0, 0, 0, -2147483648, 0, 0, 33554432]>
    aiex.runtime_sequence(%arg0: memref<23040xbf16>, %arg1: memref<23040xbf16>, %arg2: memref<23040xbf16>, %arg3: memref<23040xbf16>) {
      %0 = memref.get_global @blockwrite_data_0 : memref<8xi32>
      aiex.npu.blockwrite(%0) {address = 118816 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118820 : ui32, arg_idx = 0 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119316 : ui32, column = 0 : i32, row = 0 : i32, value = 1 : ui32}
      %1 = memref.get_global @blockwrite_data_1 : memref<8xi32>
      aiex.npu.blockwrite(%1) {address = 33673280 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 33673284 : ui32, arg_idx = 1 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119316 : ui32, column = 1 : i32, row = 0 : i32, value = 2 : ui32}
      %2 = memref.get_global @blockwrite_data_1 : memref<8xi32>
      aiex.npu.blockwrite(%2) {address = 67227744 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 67227748 : ui32, arg_idx = 2 : i32, arg_plus = 0 : i32}
      aiex.npu.write32 {address = 119316 : ui32, column = 2 : i32, row = 0 : i32, value = 3 : ui32}
      %3 = memref.get_global @blockwrite_data_0 : memref<8xi32>
      aiex.npu.blockwrite(%3) {address = 100782080 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 100782084 : ui32, arg_idx = 3 : i32, arg_plus = 0 : i32}
      aiex.npu.maskwrite32 {address = 119296 : ui32, column = 3 : i32, mask = 3840 : ui32, row = 0 : i32, value = 3840 : ui32}
      aiex.npu.write32 {address = 119300 : ui32, column = 3 : i32, row = 0 : i32, value = 2147483648 : ui32}
      aiex.npu.sync {channel = 0 : i32, column = 3 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
    }
    aie.shim_dma_allocation @in0(MM2S, 0, 0)
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb14)
    ^bb1:  // 2 preds: ^bb0, ^bb13
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_2 : memref<2xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_3 : memref<2xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_4 : memref<2xbf16>, 0, 2) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_5 : memref<2xbf16>, 0, 2) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_6 : memref<2xbf16>, 0, 2) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_7 : memref<2xbf16>, 0, 2) {bd_id = 7 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_8 : memref<2xbf16>, 0, 2) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_9 : memref<2xbf16>, 0, 2) {bd_id = 9 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_10 : memref<2xbf16>, 0, 2) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_11 : memref<2xbf16>, 0, 2) {bd_id = 11 : i32, next_bd_id = 12 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_12 : memref<2xbf16>, 0, 2) {bd_id = 12 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb14:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb15, ^bb17)
    ^bb15:  // 2 preds: ^bb14, ^bb16
      aie.use_lock(%of_in_mainA01_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA01_cons_buff_0 : memref<3840xbf16>, 0, 3840) {bd_id = 13 : i32, next_bd_id = 14 : i32}
      aie.use_lock(%of_in_mainA01_cons_cons_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%of_in_mainA01_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA01_cons_buff_1 : memref<3840xbf16>, 0, 3840) {bd_id = 14 : i32, next_bd_id = 13 : i32}
      aie.use_lock(%of_in_mainA01_cons_cons_lock, Release, 1)
      aie.next_bd ^bb15
    ^bb17:  // pred: ^bb14
      aie.end
    }
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb14)
    ^bb1:  // 2 preds: ^bb0, ^bb13
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_2 : memref<2xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_3 : memref<2xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_4 : memref<2xbf16>, 0, 2) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_5 : memref<2xbf16>, 0, 2) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_6 : memref<2xbf16>, 0, 2) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_7 : memref<2xbf16>, 0, 2) {bd_id = 7 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_8 : memref<2xbf16>, 0, 2) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_9 : memref<2xbf16>, 0, 2) {bd_id = 9 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_10 : memref<2xbf16>, 0, 2) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_11 : memref<2xbf16>, 0, 2) {bd_id = 11 : i32, next_bd_id = 12 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_12 : memref<2xbf16>, 0, 2) {bd_id = 12 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb14:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb15, ^bb17)
    ^bb15:  // 2 preds: ^bb14, ^bb16
      aie.use_lock(%of_in_mainA02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA02_cons_buff_0 : memref<3840xbf16>, 0, 3840) {bd_id = 13 : i32, next_bd_id = 14 : i32}
      aie.use_lock(%of_in_mainA02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%of_in_mainA02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA02_cons_buff_1 : memref<3840xbf16>, 0, 3840) {bd_id = 14 : i32, next_bd_id = 13 : i32}
      aie.use_lock(%of_in_mainA02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb15
    ^bb17:  // pred: ^bb14
      aie.end
    }
    %mem_0_5 = aie.mem(%tile_0_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb14)
    ^bb1:  // 2 preds: ^bb0, ^bb13
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_2 : memref<2xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_3 : memref<2xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_4 : memref<2xbf16>, 0, 2) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_5 : memref<2xbf16>, 0, 2) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_6 : memref<2xbf16>, 0, 2) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_7 : memref<2xbf16>, 0, 2) {bd_id = 7 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_8 : memref<2xbf16>, 0, 2) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_9 : memref<2xbf16>, 0, 2) {bd_id = 9 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_10 : memref<2xbf16>, 0, 2) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_11 : memref<2xbf16>, 0, 2) {bd_id = 11 : i32, next_bd_id = 12 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_12 : memref<2xbf16>, 0, 2) {bd_id = 12 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb14:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb15, ^bb17)
    ^bb15:  // 2 preds: ^bb14, ^bb16
      aie.use_lock(%of_in_mainA03_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA03_cons_buff_0 : memref<3840xbf16>, 0, 3840) {bd_id = 13 : i32, next_bd_id = 14 : i32}
      aie.use_lock(%of_in_mainA03_cons_cons_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%of_in_mainA03_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA03_cons_buff_1 : memref<3840xbf16>, 0, 3840) {bd_id = 14 : i32, next_bd_id = 13 : i32}
      aie.use_lock(%of_in_mainA03_cons_cons_lock, Release, 1)
      aie.next_bd ^bb15
    ^bb17:  // pred: ^bb14
      aie.end
    }
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb14)
    ^bb1:  // 2 preds: ^bb0, ^bb13
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_2 : memref<2xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_3 : memref<2xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_4 : memref<2xbf16>, 0, 2) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_5 : memref<2xbf16>, 0, 2) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_6 : memref<2xbf16>, 0, 2) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_7 : memref<2xbf16>, 0, 2) {bd_id = 7 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_8 : memref<2xbf16>, 0, 2) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_9 : memref<2xbf16>, 0, 2) {bd_id = 9 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_10 : memref<2xbf16>, 0, 2) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_11 : memref<2xbf16>, 0, 2) {bd_id = 11 : i32, next_bd_id = 12 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_12 : memref<2xbf16>, 0, 2) {bd_id = 12 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb14:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb15, ^bb17)
    ^bb15:  // 2 preds: ^bb14, ^bb16
      aie.use_lock(%of_in_mainA11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA11_cons_buff_0 : memref<3840xbf16>, 0, 3840) {bd_id = 13 : i32, next_bd_id = 14 : i32}
      aie.use_lock(%of_in_mainA11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%of_in_mainA11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA11_cons_buff_1 : memref<3840xbf16>, 0, 3840) {bd_id = 14 : i32, next_bd_id = 13 : i32}
      aie.use_lock(%of_in_mainA11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb15
    ^bb17:  // pred: ^bb14
      aie.end
    }
    %mem_1_4 = aie.mem(%tile_1_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb14)
    ^bb1:  // 2 preds: ^bb0, ^bb13
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_2 : memref<2xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_3 : memref<2xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_4 : memref<2xbf16>, 0, 2) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_5 : memref<2xbf16>, 0, 2) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_6 : memref<2xbf16>, 0, 2) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_7 : memref<2xbf16>, 0, 2) {bd_id = 7 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_8 : memref<2xbf16>, 0, 2) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_9 : memref<2xbf16>, 0, 2) {bd_id = 9 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_10 : memref<2xbf16>, 0, 2) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_11 : memref<2xbf16>, 0, 2) {bd_id = 11 : i32, next_bd_id = 12 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_12 : memref<2xbf16>, 0, 2) {bd_id = 12 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb14:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb15, ^bb17)
    ^bb15:  // 2 preds: ^bb14, ^bb16
      aie.use_lock(%of_in_mainA12_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA12_cons_buff_0 : memref<3840xbf16>, 0, 3840) {bd_id = 13 : i32, next_bd_id = 14 : i32}
      aie.use_lock(%of_in_mainA12_cons_cons_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%of_in_mainA12_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA12_cons_buff_1 : memref<3840xbf16>, 0, 3840) {bd_id = 14 : i32, next_bd_id = 13 : i32}
      aie.use_lock(%of_in_mainA12_cons_cons_lock, Release, 1)
      aie.next_bd ^bb15
    ^bb17:  // pred: ^bb14
      aie.end
    }
    %mem_1_5 = aie.mem(%tile_1_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb14)
    ^bb1:  // 2 preds: ^bb0, ^bb13
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_2 : memref<2xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_3 : memref<2xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_4 : memref<2xbf16>, 0, 2) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_5 : memref<2xbf16>, 0, 2) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_6 : memref<2xbf16>, 0, 2) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_7 : memref<2xbf16>, 0, 2) {bd_id = 7 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_8 : memref<2xbf16>, 0, 2) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_9 : memref<2xbf16>, 0, 2) {bd_id = 9 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_10 : memref<2xbf16>, 0, 2) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_11 : memref<2xbf16>, 0, 2) {bd_id = 11 : i32, next_bd_id = 12 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_12 : memref<2xbf16>, 0, 2) {bd_id = 12 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb14:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb15, ^bb17)
    ^bb15:  // 2 preds: ^bb14, ^bb16
      aie.use_lock(%of_in_mainA13_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA13_cons_buff_0 : memref<3840xbf16>, 0, 3840) {bd_id = 13 : i32, next_bd_id = 14 : i32}
      aie.use_lock(%of_in_mainA13_cons_cons_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb16:  // pred: ^bb15
      aie.use_lock(%of_in_mainA13_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA13_cons_buff_1 : memref<3840xbf16>, 0, 3840) {bd_id = 14 : i32, next_bd_id = 13 : i32}
      aie.use_lock(%of_in_mainA13_cons_cons_lock, Release, 1)
      aie.next_bd ^bb15
    ^bb17:  // pred: ^bb14
      aie.end
    }
    aie.shim_dma_allocation @in1(MM2S, 0, 1)
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%in1_cons_buff_0 : memref<23040xbf16>, 0, 23040) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 6)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<23040xbf16>, 0, 3840) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(MM2S, 1, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<23040xbf16>, 3840, 3840) {bd_id = 24 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      %3 = aie.dma_start(MM2S, 2, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<23040xbf16>, 7680, 3840) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      %4 = aie.dma_start(MM2S, 3, ^bb9, ^bb10)
    ^bb9:  // 2 preds: ^bb8, ^bb9
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<23040xbf16>, 11520, 3840) {bd_id = 25 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb10:  // pred: ^bb8
      %5 = aie.dma_start(MM2S, 4, ^bb11, ^bb12)
    ^bb11:  // 2 preds: ^bb10, ^bb11
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<23040xbf16>, 15360, 3840) {bd_id = 3 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb12:  // pred: ^bb10
      %6 = aie.dma_start(MM2S, 5, ^bb13, ^bb14)
    ^bb13:  // 2 preds: ^bb12, ^bb13
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<23040xbf16>, 19200, 3840) {bd_id = 26 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb14:  // pred: ^bb12
      aie.end
    }
    aie.shim_dma_allocation @in2(MM2S, 0, 2)
    %memtile_dma_2_1 = aie.memtile_dma(%mem_tile_2_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<23040xbf16>, 0, 23040) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    aie.shim_dma_allocation @out(S2MM, 0, 3)
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

