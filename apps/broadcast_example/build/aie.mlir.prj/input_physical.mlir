module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<32xbf16>
    memref.global "public" @out : memref<32xbf16>
    memref.global "public" @out2_cons : memref<192xbf16>
    memref.global "public" @out2 : memref<192xbf16>
    memref.global "public" @out1_cons : memref<192xbf16>
    memref.global "public" @out1 : memref<192xbf16>
    memref.global "public" @of_out_mainB33_cons : memref<32xbf16>
    memref.global "public" @of_out_mainB33 : memref<32xbf16>
    memref.global "public" @of_out_mainA13_cons : memref<32xbf16>
    memref.global "public" @of_out_mainA13 : memref<32xbf16>
    memref.global "public" @of_out_mainB32_cons : memref<32xbf16>
    memref.global "public" @of_out_mainB32 : memref<32xbf16>
    memref.global "public" @of_out_mainA12_cons : memref<32xbf16>
    memref.global "public" @of_out_mainA12 : memref<32xbf16>
    memref.global "public" @of_out_mainB31_cons : memref<32xbf16>
    memref.global "public" @of_out_mainB31 : memref<32xbf16>
    memref.global "public" @of_out_mainA11_cons : memref<32xbf16>
    memref.global "public" @of_out_mainA11 : memref<32xbf16>
    memref.global "public" @of_out_mainB23_cons : memref<32xbf16>
    memref.global "public" @of_out_mainB23 : memref<32xbf16>
    memref.global "public" @of_out_mainA03_cons : memref<32xbf16>
    memref.global "public" @of_out_mainA03 : memref<32xbf16>
    memref.global "public" @of_out_mainB22_cons : memref<32xbf16>
    memref.global "public" @of_out_mainB22 : memref<32xbf16>
    memref.global "public" @of_out_mainA02_cons : memref<32xbf16>
    memref.global "public" @of_out_mainA02 : memref<32xbf16>
    memref.global "public" @of_out_mainB21_cons : memref<32xbf16>
    memref.global "public" @of_out_mainB21 : memref<32xbf16>
    memref.global "public" @of_out_mainA01_cons : memref<32xbf16>
    memref.global "public" @of_out_mainA01 : memref<32xbf16>
    memref.global "public" @of_in_mainB33_cons : memref<768xbf16>
    memref.global "public" @of_in_mainB33 : memref<768xbf16>
    memref.global "public" @of_in_mainA13_cons : memref<768xbf16>
    memref.global "public" @of_in_mainA13 : memref<768xbf16>
    memref.global "public" @of_in_mainB32_cons : memref<768xbf16>
    memref.global "public" @of_in_mainB32 : memref<768xbf16>
    memref.global "public" @of_in_mainA12_cons : memref<768xbf16>
    memref.global "public" @of_in_mainA12 : memref<768xbf16>
    memref.global "public" @of_in_mainB31_cons : memref<768xbf16>
    memref.global "public" @of_in_mainB31 : memref<768xbf16>
    memref.global "public" @of_in_mainA11_cons : memref<768xbf16>
    memref.global "public" @of_in_mainA11 : memref<768xbf16>
    memref.global "public" @of_in_mainB23_cons : memref<768xbf16>
    memref.global "public" @of_in_mainB23 : memref<768xbf16>
    memref.global "public" @of_in_mainA03_cons : memref<768xbf16>
    memref.global "public" @of_in_mainA03 : memref<768xbf16>
    memref.global "public" @of_in_mainB22_cons : memref<768xbf16>
    memref.global "public" @of_in_mainB22 : memref<768xbf16>
    memref.global "public" @of_in_mainA02_cons : memref<768xbf16>
    memref.global "public" @of_in_mainA02 : memref<768xbf16>
    memref.global "public" @of_in_mainB21_cons : memref<768xbf16>
    memref.global "public" @of_in_mainB21 : memref<768xbf16>
    memref.global "public" @of_in_mainA01_cons : memref<768xbf16>
    memref.global "public" @of_in_mainA01 : memref<768xbf16>
    memref.global "public" @in2_cons : memref<4608xbf16>
    memref.global "public" @in2 : memref<4608xbf16>
    memref.global "public" @in1_cons : memref<4608xbf16>
    memref.global "public" @in1 : memref<4608xbf16>
    memref.global "public" @in0_0_cons : memref<96xbf16>
    memref.global "public" @in0_1_cons : memref<96xbf16>
    memref.global "public" @in0_2_cons : memref<96xbf16>
    memref.global "public" @in0_3_cons : memref<96xbf16>
    memref.global "public" @in0_4_cons : memref<96xbf16>
    memref.global "public" @in0_5_cons : memref<96xbf16>
    memref.global "public" @in0_6_cons : memref<96xbf16>
    memref.global "public" @in0_7_cons : memref<96xbf16>
    memref.global "public" @in0_8_cons : memref<96xbf16>
    memref.global "public" @in0_9_cons : memref<96xbf16>
    memref.global "public" @in0_10_cons : memref<96xbf16>
    memref.global "public" @in0_11_cons : memref<96xbf16>
    memref.global "public" @in0 : memref<96xbf16>
    func.func private @passthrough(memref<768xbf16>, memref<768xbf16>, i32)
    func.func private @mean(memref<192xbf16>, memref<192xbf16>, memref<32xbf16>, i32)
    func.func private @main_kernel(bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32)
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
    %out_cons_prod_lock = aie.lock(%shim_noc_tile_1_0, 2) {init = 1 : i32, sym_name = "out_cons_prod_lock"}
    %out_cons_cons_lock = aie.lock(%shim_noc_tile_1_0, 3) {init = 0 : i32, sym_name = "out_cons_cons_lock"}
    %out_buff_0 = aie.buffer(%tile_1_2) {address = 1408 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<32xbf16> 
    %out_buff_1 = aie.buffer(%tile_1_2) {address = 16768 : i32, mem_bank = 1 : i32, sym_name = "out_buff_1"} : memref<32xbf16> 
    %out_prod_lock = aie.lock(%tile_1_2, 4) {init = 2 : i32, sym_name = "out_prod_lock"}
    %out_cons_lock = aie.lock(%tile_1_2, 5) {init = 0 : i32, sym_name = "out_cons_lock"}
    %out2_cons_buff_0 = aie.buffer(%tile_1_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out2_cons_buff_0"} : memref<192xbf16> 
    %out2_cons_buff_1 = aie.buffer(%tile_1_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out2_cons_buff_1"} : memref<192xbf16> 
    %out2_cons_prod_lock = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "out2_cons_prod_lock"}
    %out2_cons_cons_lock = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "out2_cons_cons_lock"}
    %out2_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "out2_buff_0"} : memref<192xbf16> 
    %out2_buff_1 = aie.buffer(%mem_tile_2_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "out2_buff_1"} : memref<192xbf16> 
    %out2_prod_lock = aie.lock(%mem_tile_2_1, 0) {init = 12 : i32, sym_name = "out2_prod_lock"}
    %out2_cons_lock = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "out2_cons_lock"}
    %out1_cons_buff_0 = aie.buffer(%tile_1_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "out1_cons_buff_0"} : memref<192xbf16> 
    %out1_cons_buff_1 = aie.buffer(%tile_1_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "out1_cons_buff_1"} : memref<192xbf16> 
    %out1_cons_prod_lock = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "out1_cons_prod_lock"}
    %out1_cons_cons_lock = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "out1_cons_cons_lock"}
    %out1_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "out1_buff_0"} : memref<192xbf16> 
    %out1_buff_1 = aie.buffer(%mem_tile_1_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "out1_buff_1"} : memref<192xbf16> 
    %out1_prod_lock = aie.lock(%mem_tile_1_1, 0) {init = 12 : i32, sym_name = "out1_prod_lock"}
    %out1_cons_lock = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "out1_cons_lock"}
    %of_out_mainB33_buff_0 = aie.buffer(%tile_3_5) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainB33_buff_0"} : memref<32xbf16> 
    %of_out_mainB33_buff_1 = aie.buffer(%tile_3_5) {address = 19456 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainB33_buff_1"} : memref<32xbf16> 
    %of_out_mainB33_prod_lock = aie.lock(%tile_3_5, 4) {init = 2 : i32, sym_name = "of_out_mainB33_prod_lock"}
    %of_out_mainB33_cons_lock = aie.lock(%tile_3_5, 5) {init = 0 : i32, sym_name = "of_out_mainB33_cons_lock"}
    %of_out_mainA13_buff_0 = aie.buffer(%tile_1_5) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainA13_buff_0"} : memref<32xbf16> 
    %of_out_mainA13_buff_1 = aie.buffer(%tile_1_5) {address = 19456 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainA13_buff_1"} : memref<32xbf16> 
    %of_out_mainA13_prod_lock = aie.lock(%tile_1_5, 4) {init = 2 : i32, sym_name = "of_out_mainA13_prod_lock"}
    %of_out_mainA13_cons_lock = aie.lock(%tile_1_5, 5) {init = 0 : i32, sym_name = "of_out_mainA13_cons_lock"}
    %of_out_mainB32_buff_0 = aie.buffer(%tile_3_4) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainB32_buff_0"} : memref<32xbf16> 
    %of_out_mainB32_buff_1 = aie.buffer(%tile_3_4) {address = 19456 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainB32_buff_1"} : memref<32xbf16> 
    %of_out_mainB32_prod_lock = aie.lock(%tile_3_4, 4) {init = 2 : i32, sym_name = "of_out_mainB32_prod_lock"}
    %of_out_mainB32_cons_lock = aie.lock(%tile_3_4, 5) {init = 0 : i32, sym_name = "of_out_mainB32_cons_lock"}
    %of_out_mainA12_buff_0 = aie.buffer(%tile_1_4) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainA12_buff_0"} : memref<32xbf16> 
    %of_out_mainA12_buff_1 = aie.buffer(%tile_1_4) {address = 19456 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainA12_buff_1"} : memref<32xbf16> 
    %of_out_mainA12_prod_lock = aie.lock(%tile_1_4, 4) {init = 2 : i32, sym_name = "of_out_mainA12_prod_lock"}
    %of_out_mainA12_cons_lock = aie.lock(%tile_1_4, 5) {init = 0 : i32, sym_name = "of_out_mainA12_cons_lock"}
    %of_out_mainB31_buff_0 = aie.buffer(%tile_3_3) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainB31_buff_0"} : memref<32xbf16> 
    %of_out_mainB31_buff_1 = aie.buffer(%tile_3_3) {address = 19456 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainB31_buff_1"} : memref<32xbf16> 
    %of_out_mainB31_prod_lock = aie.lock(%tile_3_3, 4) {init = 2 : i32, sym_name = "of_out_mainB31_prod_lock"}
    %of_out_mainB31_cons_lock = aie.lock(%tile_3_3, 5) {init = 0 : i32, sym_name = "of_out_mainB31_cons_lock"}
    %of_out_mainA11_buff_0 = aie.buffer(%tile_1_3) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainA11_buff_0"} : memref<32xbf16> 
    %of_out_mainA11_buff_1 = aie.buffer(%tile_1_3) {address = 19456 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainA11_buff_1"} : memref<32xbf16> 
    %of_out_mainA11_prod_lock = aie.lock(%tile_1_3, 4) {init = 2 : i32, sym_name = "of_out_mainA11_prod_lock"}
    %of_out_mainA11_cons_lock = aie.lock(%tile_1_3, 5) {init = 0 : i32, sym_name = "of_out_mainA11_cons_lock"}
    %of_out_mainB23_buff_0 = aie.buffer(%tile_2_5) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainB23_buff_0"} : memref<32xbf16> 
    %of_out_mainB23_buff_1 = aie.buffer(%tile_2_5) {address = 19456 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainB23_buff_1"} : memref<32xbf16> 
    %of_out_mainB23_prod_lock = aie.lock(%tile_2_5, 4) {init = 2 : i32, sym_name = "of_out_mainB23_prod_lock"}
    %of_out_mainB23_cons_lock = aie.lock(%tile_2_5, 5) {init = 0 : i32, sym_name = "of_out_mainB23_cons_lock"}
    %of_out_mainA03_buff_0 = aie.buffer(%tile_0_5) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainA03_buff_0"} : memref<32xbf16> 
    %of_out_mainA03_buff_1 = aie.buffer(%tile_0_5) {address = 19456 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainA03_buff_1"} : memref<32xbf16> 
    %of_out_mainA03_prod_lock = aie.lock(%tile_0_5, 4) {init = 2 : i32, sym_name = "of_out_mainA03_prod_lock"}
    %of_out_mainA03_cons_lock = aie.lock(%tile_0_5, 5) {init = 0 : i32, sym_name = "of_out_mainA03_cons_lock"}
    %of_out_mainB22_buff_0 = aie.buffer(%tile_2_4) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainB22_buff_0"} : memref<32xbf16> 
    %of_out_mainB22_buff_1 = aie.buffer(%tile_2_4) {address = 19456 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainB22_buff_1"} : memref<32xbf16> 
    %of_out_mainB22_prod_lock = aie.lock(%tile_2_4, 4) {init = 2 : i32, sym_name = "of_out_mainB22_prod_lock"}
    %of_out_mainB22_cons_lock = aie.lock(%tile_2_4, 5) {init = 0 : i32, sym_name = "of_out_mainB22_cons_lock"}
    %of_out_mainA02_buff_0 = aie.buffer(%tile_0_4) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainA02_buff_0"} : memref<32xbf16> 
    %of_out_mainA02_buff_1 = aie.buffer(%tile_0_4) {address = 19456 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainA02_buff_1"} : memref<32xbf16> 
    %of_out_mainA02_prod_lock = aie.lock(%tile_0_4, 4) {init = 2 : i32, sym_name = "of_out_mainA02_prod_lock"}
    %of_out_mainA02_cons_lock = aie.lock(%tile_0_4, 5) {init = 0 : i32, sym_name = "of_out_mainA02_cons_lock"}
    %of_out_mainB21_buff_0 = aie.buffer(%tile_2_3) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainB21_buff_0"} : memref<32xbf16> 
    %of_out_mainB21_buff_1 = aie.buffer(%tile_2_3) {address = 19456 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainB21_buff_1"} : memref<32xbf16> 
    %of_out_mainB21_prod_lock = aie.lock(%tile_2_3, 4) {init = 2 : i32, sym_name = "of_out_mainB21_prod_lock"}
    %of_out_mainB21_cons_lock = aie.lock(%tile_2_3, 5) {init = 0 : i32, sym_name = "of_out_mainB21_cons_lock"}
    %of_out_mainA01_buff_0 = aie.buffer(%tile_0_3) {address = 4096 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainA01_buff_0"} : memref<32xbf16> 
    %of_out_mainA01_buff_1 = aie.buffer(%tile_0_3) {address = 19456 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainA01_buff_1"} : memref<32xbf16> 
    %of_out_mainA01_prod_lock = aie.lock(%tile_0_3, 4) {init = 2 : i32, sym_name = "of_out_mainA01_prod_lock"}
    %of_out_mainA01_cons_lock = aie.lock(%tile_0_3, 5) {init = 0 : i32, sym_name = "of_out_mainA01_cons_lock"}
    %of_in_mainB33_cons_buff_0 = aie.buffer(%tile_3_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB33_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainB33_cons_buff_1 = aie.buffer(%tile_3_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB33_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainB33_cons_buff_2 = aie.buffer(%tile_3_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainB33_cons_buff_2"} : memref<768xbf16> 
    %of_in_mainB33_cons_buff_3 = aie.buffer(%tile_3_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainB33_cons_buff_3"} : memref<768xbf16> 
    %of_in_mainB33_cons_buff_4 = aie.buffer(%tile_3_5) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB33_cons_buff_4"} : memref<768xbf16> 
    %of_in_mainB33_cons_buff_5 = aie.buffer(%tile_3_5) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB33_cons_buff_5"} : memref<768xbf16> 
    %of_in_mainB33_cons_prod_lock = aie.lock(%tile_3_5, 2) {init = 6 : i32, sym_name = "of_in_mainB33_cons_prod_lock"}
    %of_in_mainB33_cons_cons_lock = aie.lock(%tile_3_5, 3) {init = 0 : i32, sym_name = "of_in_mainB33_cons_cons_lock"}
    %of_in_mainA13_cons_buff_0 = aie.buffer(%tile_1_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA13_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainA13_cons_buff_1 = aie.buffer(%tile_1_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA13_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainA13_cons_buff_2 = aie.buffer(%tile_1_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainA13_cons_buff_2"} : memref<768xbf16> 
    %of_in_mainA13_cons_buff_3 = aie.buffer(%tile_1_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainA13_cons_buff_3"} : memref<768xbf16> 
    %of_in_mainA13_cons_buff_4 = aie.buffer(%tile_1_5) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA13_cons_buff_4"} : memref<768xbf16> 
    %of_in_mainA13_cons_buff_5 = aie.buffer(%tile_1_5) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA13_cons_buff_5"} : memref<768xbf16> 
    %of_in_mainA13_cons_prod_lock = aie.lock(%tile_1_5, 2) {init = 6 : i32, sym_name = "of_in_mainA13_cons_prod_lock"}
    %of_in_mainA13_cons_cons_lock = aie.lock(%tile_1_5, 3) {init = 0 : i32, sym_name = "of_in_mainA13_cons_cons_lock"}
    %of_in_mainB32_cons_buff_0 = aie.buffer(%tile_3_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB32_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainB32_cons_buff_1 = aie.buffer(%tile_3_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB32_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainB32_cons_buff_2 = aie.buffer(%tile_3_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainB32_cons_buff_2"} : memref<768xbf16> 
    %of_in_mainB32_cons_buff_3 = aie.buffer(%tile_3_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainB32_cons_buff_3"} : memref<768xbf16> 
    %of_in_mainB32_cons_buff_4 = aie.buffer(%tile_3_4) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB32_cons_buff_4"} : memref<768xbf16> 
    %of_in_mainB32_cons_buff_5 = aie.buffer(%tile_3_4) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB32_cons_buff_5"} : memref<768xbf16> 
    %of_in_mainB32_cons_prod_lock = aie.lock(%tile_3_4, 2) {init = 6 : i32, sym_name = "of_in_mainB32_cons_prod_lock"}
    %of_in_mainB32_cons_cons_lock = aie.lock(%tile_3_4, 3) {init = 0 : i32, sym_name = "of_in_mainB32_cons_cons_lock"}
    %of_in_mainA12_cons_buff_0 = aie.buffer(%tile_1_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA12_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainA12_cons_buff_1 = aie.buffer(%tile_1_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA12_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainA12_cons_buff_2 = aie.buffer(%tile_1_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainA12_cons_buff_2"} : memref<768xbf16> 
    %of_in_mainA12_cons_buff_3 = aie.buffer(%tile_1_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainA12_cons_buff_3"} : memref<768xbf16> 
    %of_in_mainA12_cons_buff_4 = aie.buffer(%tile_1_4) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA12_cons_buff_4"} : memref<768xbf16> 
    %of_in_mainA12_cons_buff_5 = aie.buffer(%tile_1_4) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA12_cons_buff_5"} : memref<768xbf16> 
    %of_in_mainA12_cons_prod_lock = aie.lock(%tile_1_4, 2) {init = 6 : i32, sym_name = "of_in_mainA12_cons_prod_lock"}
    %of_in_mainA12_cons_cons_lock = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "of_in_mainA12_cons_cons_lock"}
    %of_in_mainB31_cons_buff_0 = aie.buffer(%tile_3_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB31_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainB31_cons_buff_1 = aie.buffer(%tile_3_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB31_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainB31_cons_buff_2 = aie.buffer(%tile_3_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainB31_cons_buff_2"} : memref<768xbf16> 
    %of_in_mainB31_cons_buff_3 = aie.buffer(%tile_3_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainB31_cons_buff_3"} : memref<768xbf16> 
    %of_in_mainB31_cons_buff_4 = aie.buffer(%tile_3_3) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB31_cons_buff_4"} : memref<768xbf16> 
    %of_in_mainB31_cons_buff_5 = aie.buffer(%tile_3_3) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB31_cons_buff_5"} : memref<768xbf16> 
    %of_in_mainB31_cons_prod_lock = aie.lock(%tile_3_3, 2) {init = 6 : i32, sym_name = "of_in_mainB31_cons_prod_lock"}
    %of_in_mainB31_cons_cons_lock = aie.lock(%tile_3_3, 3) {init = 0 : i32, sym_name = "of_in_mainB31_cons_cons_lock"}
    %of_in_mainA11_cons_buff_0 = aie.buffer(%tile_1_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA11_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainA11_cons_buff_1 = aie.buffer(%tile_1_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA11_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainA11_cons_buff_2 = aie.buffer(%tile_1_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainA11_cons_buff_2"} : memref<768xbf16> 
    %of_in_mainA11_cons_buff_3 = aie.buffer(%tile_1_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainA11_cons_buff_3"} : memref<768xbf16> 
    %of_in_mainA11_cons_buff_4 = aie.buffer(%tile_1_3) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA11_cons_buff_4"} : memref<768xbf16> 
    %of_in_mainA11_cons_buff_5 = aie.buffer(%tile_1_3) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA11_cons_buff_5"} : memref<768xbf16> 
    %of_in_mainA11_cons_prod_lock = aie.lock(%tile_1_3, 2) {init = 6 : i32, sym_name = "of_in_mainA11_cons_prod_lock"}
    %of_in_mainA11_cons_cons_lock = aie.lock(%tile_1_3, 3) {init = 0 : i32, sym_name = "of_in_mainA11_cons_cons_lock"}
    %of_in_mainB23_cons_buff_0 = aie.buffer(%tile_2_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB23_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainB23_cons_buff_1 = aie.buffer(%tile_2_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB23_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainB23_cons_buff_2 = aie.buffer(%tile_2_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainB23_cons_buff_2"} : memref<768xbf16> 
    %of_in_mainB23_cons_buff_3 = aie.buffer(%tile_2_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainB23_cons_buff_3"} : memref<768xbf16> 
    %of_in_mainB23_cons_buff_4 = aie.buffer(%tile_2_5) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB23_cons_buff_4"} : memref<768xbf16> 
    %of_in_mainB23_cons_buff_5 = aie.buffer(%tile_2_5) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB23_cons_buff_5"} : memref<768xbf16> 
    %of_in_mainB23_cons_prod_lock = aie.lock(%tile_2_5, 2) {init = 6 : i32, sym_name = "of_in_mainB23_cons_prod_lock"}
    %of_in_mainB23_cons_cons_lock = aie.lock(%tile_2_5, 3) {init = 0 : i32, sym_name = "of_in_mainB23_cons_cons_lock"}
    %of_in_mainA03_cons_buff_0 = aie.buffer(%tile_0_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA03_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainA03_cons_buff_1 = aie.buffer(%tile_0_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA03_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainA03_cons_buff_2 = aie.buffer(%tile_0_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainA03_cons_buff_2"} : memref<768xbf16> 
    %of_in_mainA03_cons_buff_3 = aie.buffer(%tile_0_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainA03_cons_buff_3"} : memref<768xbf16> 
    %of_in_mainA03_cons_buff_4 = aie.buffer(%tile_0_5) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA03_cons_buff_4"} : memref<768xbf16> 
    %of_in_mainA03_cons_buff_5 = aie.buffer(%tile_0_5) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA03_cons_buff_5"} : memref<768xbf16> 
    %of_in_mainA03_cons_prod_lock = aie.lock(%tile_0_5, 2) {init = 6 : i32, sym_name = "of_in_mainA03_cons_prod_lock"}
    %of_in_mainA03_cons_cons_lock = aie.lock(%tile_0_5, 3) {init = 0 : i32, sym_name = "of_in_mainA03_cons_cons_lock"}
    %of_in_mainB22_cons_buff_0 = aie.buffer(%tile_2_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB22_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainB22_cons_buff_1 = aie.buffer(%tile_2_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB22_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainB22_cons_buff_2 = aie.buffer(%tile_2_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainB22_cons_buff_2"} : memref<768xbf16> 
    %of_in_mainB22_cons_buff_3 = aie.buffer(%tile_2_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainB22_cons_buff_3"} : memref<768xbf16> 
    %of_in_mainB22_cons_buff_4 = aie.buffer(%tile_2_4) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB22_cons_buff_4"} : memref<768xbf16> 
    %of_in_mainB22_cons_buff_5 = aie.buffer(%tile_2_4) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB22_cons_buff_5"} : memref<768xbf16> 
    %of_in_mainB22_cons_prod_lock = aie.lock(%tile_2_4, 2) {init = 6 : i32, sym_name = "of_in_mainB22_cons_prod_lock"}
    %of_in_mainB22_cons_cons_lock = aie.lock(%tile_2_4, 3) {init = 0 : i32, sym_name = "of_in_mainB22_cons_cons_lock"}
    %of_in_mainA02_cons_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA02_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainA02_cons_buff_1 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA02_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainA02_cons_buff_2 = aie.buffer(%tile_0_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainA02_cons_buff_2"} : memref<768xbf16> 
    %of_in_mainA02_cons_buff_3 = aie.buffer(%tile_0_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainA02_cons_buff_3"} : memref<768xbf16> 
    %of_in_mainA02_cons_buff_4 = aie.buffer(%tile_0_4) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA02_cons_buff_4"} : memref<768xbf16> 
    %of_in_mainA02_cons_buff_5 = aie.buffer(%tile_0_4) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA02_cons_buff_5"} : memref<768xbf16> 
    %of_in_mainA02_cons_prod_lock = aie.lock(%tile_0_4, 2) {init = 6 : i32, sym_name = "of_in_mainA02_cons_prod_lock"}
    %of_in_mainA02_cons_cons_lock = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "of_in_mainA02_cons_cons_lock"}
    %of_in_mainB21_cons_buff_0 = aie.buffer(%tile_2_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB21_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainB21_cons_buff_1 = aie.buffer(%tile_2_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB21_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainB21_cons_buff_2 = aie.buffer(%tile_2_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainB21_cons_buff_2"} : memref<768xbf16> 
    %of_in_mainB21_cons_buff_3 = aie.buffer(%tile_2_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainB21_cons_buff_3"} : memref<768xbf16> 
    %of_in_mainB21_cons_buff_4 = aie.buffer(%tile_2_3) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB21_cons_buff_4"} : memref<768xbf16> 
    %of_in_mainB21_cons_buff_5 = aie.buffer(%tile_2_3) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB21_cons_buff_5"} : memref<768xbf16> 
    %of_in_mainB21_cons_prod_lock = aie.lock(%tile_2_3, 2) {init = 6 : i32, sym_name = "of_in_mainB21_cons_prod_lock"}
    %of_in_mainB21_cons_cons_lock = aie.lock(%tile_2_3, 3) {init = 0 : i32, sym_name = "of_in_mainB21_cons_cons_lock"}
    %of_in_mainA01_cons_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA01_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainA01_cons_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA01_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainA01_cons_buff_2 = aie.buffer(%tile_0_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainA01_cons_buff_2"} : memref<768xbf16> 
    %of_in_mainA01_cons_buff_3 = aie.buffer(%tile_0_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainA01_cons_buff_3"} : memref<768xbf16> 
    %of_in_mainA01_cons_buff_4 = aie.buffer(%tile_0_3) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA01_cons_buff_4"} : memref<768xbf16> 
    %of_in_mainA01_cons_buff_5 = aie.buffer(%tile_0_3) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA01_cons_buff_5"} : memref<768xbf16> 
    %of_in_mainA01_cons_prod_lock = aie.lock(%tile_0_3, 2) {init = 6 : i32, sym_name = "of_in_mainA01_cons_prod_lock"}
    %of_in_mainA01_cons_cons_lock = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "of_in_mainA01_cons_cons_lock"}
    %in2_cons_buff_0 = aie.buffer(%mem_tile_3_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_0"} : memref<4608xbf16> 
    %in2_cons_buff_1 = aie.buffer(%mem_tile_3_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in2_cons_buff_1"} : memref<4608xbf16> 
    %in2_cons_prod_lock = aie.lock(%mem_tile_3_1, 0) {init = 12 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%mem_tile_3_1, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in2_prod_lock = aie.lock(%shim_noc_tile_3_0, 0) {init = 1 : i32, sym_name = "in2_prod_lock"}
    %in2_cons_lock = aie.lock(%shim_noc_tile_3_0, 1) {init = 0 : i32, sym_name = "in2_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in1_cons_buff_0"} : memref<4608xbf16> 
    %in1_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in1_cons_buff_1"} : memref<4608xbf16> 
    %in1_cons_prod_lock = aie.lock(%mem_tile_0_1, 0) {init = 12 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%mem_tile_0_1, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in1_prod_lock = aie.lock(%shim_noc_tile_0_0, 0) {init = 1 : i32, sym_name = "in1_prod_lock"}
    %in1_cons_lock = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "in1_cons_lock"}
    %in0_0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 34304 : i32, mem_bank = 2 : i32, sym_name = "in0_0_cons_buff_0"} : memref<96xbf16> 
    %in0_0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 50688 : i32, mem_bank = 3 : i32, sym_name = "in0_0_cons_buff_1"} : memref<96xbf16> 
    %in0_0_cons_prod_lock = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "in0_0_cons_prod_lock"}
    %in0_0_cons_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "in0_0_cons_cons_lock"}
    %in0_1_cons_buff_0 = aie.buffer(%tile_0_4) {address = 34304 : i32, mem_bank = 2 : i32, sym_name = "in0_1_cons_buff_0"} : memref<96xbf16> 
    %in0_1_cons_buff_1 = aie.buffer(%tile_0_4) {address = 50688 : i32, mem_bank = 3 : i32, sym_name = "in0_1_cons_buff_1"} : memref<96xbf16> 
    %in0_1_cons_prod_lock = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "in0_1_cons_prod_lock"}
    %in0_1_cons_cons_lock = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "in0_1_cons_cons_lock"}
    %in0_2_cons_buff_0 = aie.buffer(%tile_0_5) {address = 34304 : i32, mem_bank = 2 : i32, sym_name = "in0_2_cons_buff_0"} : memref<96xbf16> 
    %in0_2_cons_buff_1 = aie.buffer(%tile_0_5) {address = 50688 : i32, mem_bank = 3 : i32, sym_name = "in0_2_cons_buff_1"} : memref<96xbf16> 
    %in0_2_cons_prod_lock = aie.lock(%tile_0_5, 0) {init = 2 : i32, sym_name = "in0_2_cons_prod_lock"}
    %in0_2_cons_cons_lock = aie.lock(%tile_0_5, 1) {init = 0 : i32, sym_name = "in0_2_cons_cons_lock"}
    %in0_3_cons_buff_0 = aie.buffer(%tile_1_3) {address = 34304 : i32, mem_bank = 2 : i32, sym_name = "in0_3_cons_buff_0"} : memref<96xbf16> 
    %in0_3_cons_buff_1 = aie.buffer(%tile_1_3) {address = 50688 : i32, mem_bank = 3 : i32, sym_name = "in0_3_cons_buff_1"} : memref<96xbf16> 
    %in0_3_cons_prod_lock = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "in0_3_cons_prod_lock"}
    %in0_3_cons_cons_lock = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "in0_3_cons_cons_lock"}
    %in0_4_cons_buff_0 = aie.buffer(%tile_1_4) {address = 34304 : i32, mem_bank = 2 : i32, sym_name = "in0_4_cons_buff_0"} : memref<96xbf16> 
    %in0_4_cons_buff_1 = aie.buffer(%tile_1_4) {address = 50688 : i32, mem_bank = 3 : i32, sym_name = "in0_4_cons_buff_1"} : memref<96xbf16> 
    %in0_4_cons_prod_lock = aie.lock(%tile_1_4, 0) {init = 2 : i32, sym_name = "in0_4_cons_prod_lock"}
    %in0_4_cons_cons_lock = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "in0_4_cons_cons_lock"}
    %in0_5_cons_buff_0 = aie.buffer(%tile_1_5) {address = 34304 : i32, mem_bank = 2 : i32, sym_name = "in0_5_cons_buff_0"} : memref<96xbf16> 
    %in0_5_cons_buff_1 = aie.buffer(%tile_1_5) {address = 50688 : i32, mem_bank = 3 : i32, sym_name = "in0_5_cons_buff_1"} : memref<96xbf16> 
    %in0_5_cons_prod_lock = aie.lock(%tile_1_5, 0) {init = 2 : i32, sym_name = "in0_5_cons_prod_lock"}
    %in0_5_cons_cons_lock = aie.lock(%tile_1_5, 1) {init = 0 : i32, sym_name = "in0_5_cons_cons_lock"}
    %in0_6_cons_buff_0 = aie.buffer(%tile_2_3) {address = 34304 : i32, mem_bank = 2 : i32, sym_name = "in0_6_cons_buff_0"} : memref<96xbf16> 
    %in0_6_cons_buff_1 = aie.buffer(%tile_2_3) {address = 50688 : i32, mem_bank = 3 : i32, sym_name = "in0_6_cons_buff_1"} : memref<96xbf16> 
    %in0_6_cons_prod_lock = aie.lock(%tile_2_3, 0) {init = 2 : i32, sym_name = "in0_6_cons_prod_lock"}
    %in0_6_cons_cons_lock = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "in0_6_cons_cons_lock"}
    %in0_7_cons_buff_0 = aie.buffer(%tile_2_4) {address = 34304 : i32, mem_bank = 2 : i32, sym_name = "in0_7_cons_buff_0"} : memref<96xbf16> 
    %in0_7_cons_buff_1 = aie.buffer(%tile_2_4) {address = 50688 : i32, mem_bank = 3 : i32, sym_name = "in0_7_cons_buff_1"} : memref<96xbf16> 
    %in0_7_cons_prod_lock = aie.lock(%tile_2_4, 0) {init = 2 : i32, sym_name = "in0_7_cons_prod_lock"}
    %in0_7_cons_cons_lock = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "in0_7_cons_cons_lock"}
    %in0_8_cons_buff_0 = aie.buffer(%tile_2_5) {address = 34304 : i32, mem_bank = 2 : i32, sym_name = "in0_8_cons_buff_0"} : memref<96xbf16> 
    %in0_8_cons_buff_1 = aie.buffer(%tile_2_5) {address = 50688 : i32, mem_bank = 3 : i32, sym_name = "in0_8_cons_buff_1"} : memref<96xbf16> 
    %in0_8_cons_prod_lock = aie.lock(%tile_2_5, 0) {init = 2 : i32, sym_name = "in0_8_cons_prod_lock"}
    %in0_8_cons_cons_lock = aie.lock(%tile_2_5, 1) {init = 0 : i32, sym_name = "in0_8_cons_cons_lock"}
    %in0_9_cons_buff_0 = aie.buffer(%tile_3_3) {address = 34304 : i32, mem_bank = 2 : i32, sym_name = "in0_9_cons_buff_0"} : memref<96xbf16> 
    %in0_9_cons_buff_1 = aie.buffer(%tile_3_3) {address = 50688 : i32, mem_bank = 3 : i32, sym_name = "in0_9_cons_buff_1"} : memref<96xbf16> 
    %in0_9_cons_prod_lock = aie.lock(%tile_3_3, 0) {init = 2 : i32, sym_name = "in0_9_cons_prod_lock"}
    %in0_9_cons_cons_lock = aie.lock(%tile_3_3, 1) {init = 0 : i32, sym_name = "in0_9_cons_cons_lock"}
    %in0_10_cons_buff_0 = aie.buffer(%tile_3_4) {address = 34304 : i32, mem_bank = 2 : i32, sym_name = "in0_10_cons_buff_0"} : memref<96xbf16> 
    %in0_10_cons_buff_1 = aie.buffer(%tile_3_4) {address = 50688 : i32, mem_bank = 3 : i32, sym_name = "in0_10_cons_buff_1"} : memref<96xbf16> 
    %in0_10_cons_prod_lock = aie.lock(%tile_3_4, 0) {init = 2 : i32, sym_name = "in0_10_cons_prod_lock"}
    %in0_10_cons_cons_lock = aie.lock(%tile_3_4, 1) {init = 0 : i32, sym_name = "in0_10_cons_cons_lock"}
    %in0_11_cons_buff_0 = aie.buffer(%tile_3_5) {address = 34304 : i32, mem_bank = 2 : i32, sym_name = "in0_11_cons_buff_0"} : memref<96xbf16> 
    %in0_11_cons_buff_1 = aie.buffer(%tile_3_5) {address = 50688 : i32, mem_bank = 3 : i32, sym_name = "in0_11_cons_buff_1"} : memref<96xbf16> 
    %in0_11_cons_prod_lock = aie.lock(%tile_3_5, 0) {init = 2 : i32, sym_name = "in0_11_cons_prod_lock"}
    %in0_11_cons_cons_lock = aie.lock(%tile_3_5, 1) {init = 0 : i32, sym_name = "in0_11_cons_cons_lock"}
    %in0_prod_lock = aie.lock(%shim_noc_tile_1_0, 0) {init = 1 : i32, sym_name = "in0_prod_lock"}
    %in0_cons_lock = aie.lock(%shim_noc_tile_1_0, 1) {init = 0 : i32, sym_name = "in0_cons_lock"}
    %switchbox_0_2 = aie.switchbox(%tile_0_2) {
      aie.connect<East : 3, North : 3>
      aie.connect<South : 5, North : 5>
      aie.connect<South : 0, North : 2>
      aie.connect<South : 1, North : 4>
      aie.connect<South : 2, East : 0>
      aie.connect<South : 3, North : 0>
      aie.connect<South : 4, North : 1>
      aie.connect<North : 3, South : 2>
      aie.connect<North : 2, South : 0>
      aie.connect<North : 0, East : 1>
      aie.connect<East : 1, South : 3>
    }
    %switchbox_0_3 = aie.switchbox(%tile_0_3) {
      aie.connect<South : 3, North : 2>
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 5, DMA : 1>
      aie.connect<South : 2, North : 0>
      aie.connect<South : 4, North : 5>
      aie.connect<South : 0, East : 0>
      aie.connect<South : 1, East : 1>
      aie.connect<DMA : 0, South : 3>
      aie.connect<North : 3, South : 2>
      aie.connect<North : 0, South : 0>
    }
    %switchbox_0_4 = aie.switchbox(%tile_0_4) {
      aie.connect<South : 2, North : 5>
      aie.connect<South : 2, DMA : 0>
      aie.connect<South : 0, DMA : 1>
      aie.connect<South : 5, North : 1>
      aie.connect<DMA : 0, South : 3>
      aie.connect<North : 0, South : 0>
    }
    %switchbox_0_5 = aie.switchbox(%tile_0_5) {
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 1, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_1_0 = aie.switchbox(%shim_noc_tile_1_0) {
      aie.connect<South : 3, North : 5>
      aie.connect<West : 2, North : 3>
      aie.connect<West : 1, North : 0>
      aie.connect<West : 3, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_1_0 = aie.shim_mux(%shim_noc_tile_1_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<North : 2, DMA : 0>
    }
    %switchbox_1_1 = aie.switchbox(%mem_tile_1_1) {
      aie.connect<South : 5, North : 5>
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 0, DMA : 1>
      aie.connect<North : 3, DMA : 2>
      aie.connect<North : 0, DMA : 3>
      aie.connect<North : 1, DMA : 4>
      aie.connect<North : 2, DMA : 5>
      aie.connect<DMA : 0, North : 3>
    }
    %switchbox_1_2 = aie.switchbox(%tile_1_2) {
      aie.connect<South : 5, North : 0>
      aie.connect<South : 5, East : 0>
      aie.connect<South : 5, West : 3>
      aie.connect<West : 0, North : 2>
      aie.connect<West : 1, South : 3>
      aie.connect<North : 2, South : 0>
      aie.connect<North : 1, South : 1>
      aie.connect<North : 0, South : 2>
      aie.connect<South : 3, DMA : 0>
      aie.connect<East : 3, DMA : 1>
      aie.connect<DMA : 0, West : 1>
    }
    %switchbox_1_3 = aie.switchbox(%tile_1_3) {
      aie.connect<South : 0, North : 5>
      aie.connect<South : 0, DMA : 0>
      aie.connect<South : 2, DMA : 1>
      aie.connect<West : 0, North : 4>
      aie.connect<West : 1, North : 2>
      aie.connect<DMA : 0, South : 2>
      aie.connect<North : 1, South : 1>
      aie.connect<North : 2, South : 0>
    }
    %switchbox_1_4 = aie.switchbox(%tile_1_4) {
      aie.connect<South : 5, North : 2>
      aie.connect<South : 5, East : 0>
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 4, DMA : 1>
      aie.connect<South : 2, North : 0>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 2>
    }
    %switchbox_1_5 = aie.switchbox(%tile_1_5) {
      aie.connect<South : 2, East : 3>
      aie.connect<South : 2, DMA : 0>
      aie.connect<South : 0, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_2_2 = aie.switchbox(%tile_2_2) {
      aie.connect<West : 0, North : 1>
      aie.connect<North : 2, South : 2>
      aie.connect<North : 1, South : 3>
      aie.connect<North : 0, South : 0>
      aie.connect<East : 2, South : 1>
      aie.connect<South : 1, West : 3>
    }
    %switchbox_2_3 = aie.switchbox(%tile_2_3) {
      aie.connect<South : 1, East : 2>
      aie.connect<South : 1, DMA : 0>
      aie.connect<East : 2, DMA : 1>
      aie.connect<East : 1, North : 5>
      aie.connect<DMA : 0, South : 2>
      aie.connect<North : 1, South : 1>
      aie.connect<North : 3, South : 0>
    }
    %switchbox_2_4 = aie.switchbox(%tile_2_4) {
      aie.connect<West : 0, East : 2>
      aie.connect<West : 0, DMA : 0>
      aie.connect<South : 5, DMA : 1>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 0, South : 3>
    }
    %switchbox_2_5 = aie.switchbox(%tile_2_5) {
      aie.connect<West : 3, East : 1>
      aie.connect<West : 3, DMA : 0>
      aie.connect<East : 2, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_3_3 = aie.switchbox(%tile_3_3) {
      aie.connect<West : 2, DMA : 0>
      aie.connect<South : 4, West : 2>
      aie.connect<South : 5, West : 1>
      aie.connect<South : 0, North : 3>
      aie.connect<South : 1, DMA : 1>
      aie.connect<South : 2, North : 0>
      aie.connect<South : 3, North : 2>
      aie.connect<DMA : 0, South : 2>
      aie.connect<North : 2, South : 0>
      aie.connect<North : 1, South : 1>
    }
    %switchbox_3_4 = aie.switchbox(%tile_3_4) {
      aie.connect<West : 2, DMA : 0>
      aie.connect<South : 3, North : 0>
      aie.connect<South : 0, DMA : 1>
      aie.connect<South : 2, North : 2>
      aie.connect<DMA : 0, South : 2>
      aie.connect<North : 0, South : 1>
    }
    %switchbox_3_5 = aie.switchbox(%tile_3_5) {
      aie.connect<West : 1, DMA : 0>
      aie.connect<South : 0, West : 2>
      aie.connect<South : 2, DMA : 1>
      aie.connect<DMA : 0, South : 0>
    }
    %switchbox_0_0 = aie.switchbox(%shim_noc_tile_0_0) {
      aie.connect<South : 3, North : 5>
      aie.connect<North : 2, East : 2>
      aie.connect<North : 0, East : 1>
      aie.connect<North : 3, East : 3>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_0_0 = aie.shim_mux(%shim_noc_tile_0_0) {
      aie.connect<DMA : 0, North : 3>
    }
    %switchbox_0_1 = aie.switchbox(%mem_tile_0_1) {
      aie.connect<South : 5, DMA : 0>
      aie.connect<DMA : 0, North : 5>
      aie.connect<DMA : 1, North : 0>
      aie.connect<DMA : 2, North : 1>
      aie.connect<DMA : 3, North : 2>
      aie.connect<DMA : 4, North : 3>
      aie.connect<DMA : 5, North : 4>
      aie.connect<North : 2, South : 2>
      aie.connect<North : 0, South : 0>
      aie.connect<North : 3, South : 3>
    }
    %switchbox_3_0 = aie.switchbox(%shim_noc_tile_3_0) {
      aie.connect<South : 3, North : 0>
      aie.connect<North : 1, West : 3>
      aie.connect<North : 0, West : 0>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_3_0 = aie.shim_mux(%shim_noc_tile_3_0) {
      aie.connect<DMA : 0, North : 3>
    }
    %switchbox_3_1 = aie.switchbox(%mem_tile_3_1) {
      aie.connect<South : 0, DMA : 0>
      aie.connect<DMA : 0, North : 0>
      aie.connect<DMA : 1, North : 1>
      aie.connect<DMA : 2, North : 3>
      aie.connect<DMA : 3, North : 5>
      aie.connect<DMA : 4, North : 2>
      aie.connect<DMA : 5, North : 4>
      aie.connect<North : 1, South : 1>
      aie.connect<North : 0, South : 0>
    }
    %switchbox_3_2 = aie.switchbox(%tile_3_2) {
      aie.connect<South : 0, North : 4>
      aie.connect<South : 1, North : 5>
      aie.connect<South : 3, North : 0>
      aie.connect<South : 5, North : 1>
      aie.connect<South : 2, North : 2>
      aie.connect<South : 4, North : 3>
      aie.connect<North : 2, West : 2>
      aie.connect<North : 0, South : 1>
      aie.connect<North : 1, South : 0>
    }
    %switchbox_2_1 = aie.switchbox(%mem_tile_2_1) {
      aie.connect<North : 2, DMA : 0>
      aie.connect<North : 3, DMA : 1>
      aie.connect<North : 0, DMA : 2>
      aie.connect<North : 1, DMA : 3>
      aie.connect<South : 3, DMA : 4>
      aie.connect<South : 1, DMA : 5>
      aie.connect<DMA : 0, North : 1>
    }
    %switchbox_2_0 = aie.switchbox(%shim_noc_tile_2_0) {
      aie.connect<East : 3, North : 3>
      aie.connect<East : 0, North : 1>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
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
      %c2048 = arith.constant 2048 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c2048 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%out1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%out2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c32_i32 = arith.constant 32 : i32
      func.call @mean(%out1_cons_buff_0, %out2_cons_buff_0, %out_buff_0, %c32_i32) : (memref<192xbf16>, memref<192xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out1_cons_prod_lock, Release, 1)
      aie.use_lock(%out2_cons_prod_lock, Release, 1)
      aie.use_lock(%out1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%out2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      %c32_i32_2 = arith.constant 32 : i32
      func.call @mean(%out1_cons_buff_1, %out2_cons_buff_1, %out_buff_1, %c32_i32_2) : (memref<192xbf16>, memref<192xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out1_cons_prod_lock, Release, 1)
      aie.use_lock(%out2_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "mean.o"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c6 = arith.constant 6 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb20
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %2 = memref.load %in0_0_cons_buff_0[%c0_0] : memref<96xbf16>
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA01_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_1 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c1_2 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_1 : index)
    ^bb3(%3: index):  // 2 preds: ^bb2, ^bb4
      %4 = arith.cmpi slt, %3, %c2048 : index
      cf.cond_br %4, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_0_cons_buff_1, %of_in_mainA01_cons_buff_0, %of_in_mainA01_cons_buff_1, %of_in_mainA01_cons_buff_2, %of_in_mainA01_cons_buff_3, %of_in_mainA01_cons_buff_4, %of_out_mainA01_buff_0, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_3 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_0_cons_buff_0, %of_in_mainA01_cons_buff_0, %of_in_mainA01_cons_buff_1, %of_in_mainA01_cons_buff_2, %of_in_mainA01_cons_buff_3, %of_in_mainA01_cons_buff_4, %of_out_mainA01_buff_1, %c768_i32_3) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      %5 = arith.addi %3, %c2 : index
      cf.br ^bb3(%5 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainA01_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %6 = memref.load %in0_0_cons_buff_1[%c0_4] : memref<96xbf16>
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA01_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_5 = arith.constant 0 : index
      %c2048_6 = arith.constant 2048 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c2048_6 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_9 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_0_cons_buff_0, %of_in_mainA01_cons_buff_5, %of_in_mainA01_cons_buff_0, %of_in_mainA01_cons_buff_1, %of_in_mainA01_cons_buff_2, %of_in_mainA01_cons_buff_3, %of_out_mainA01_buff_0, %c768_i32_9) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_10 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_0_cons_buff_1, %of_in_mainA01_cons_buff_5, %of_in_mainA01_cons_buff_0, %of_in_mainA01_cons_buff_1, %of_in_mainA01_cons_buff_2, %of_in_mainA01_cons_buff_3, %of_out_mainA01_buff_1, %c768_i32_10) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb6(%9 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainA01_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_11 = arith.constant 0 : index
      %10 = memref.load %in0_0_cons_buff_0[%c0_11] : memref<96xbf16>
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA01_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_12 = arith.constant 0 : index
      %c2048_13 = arith.constant 2048 : index
      %c1_14 = arith.constant 1 : index
      %c2_15 = arith.constant 2 : index
      cf.br ^bb9(%c0_12 : index)
    ^bb9(%11: index):  // 2 preds: ^bb8, ^bb10
      %12 = arith.cmpi slt, %11, %c2048_13 : index
      cf.cond_br %12, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_16 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_0_cons_buff_1, %of_in_mainA01_cons_buff_4, %of_in_mainA01_cons_buff_5, %of_in_mainA01_cons_buff_0, %of_in_mainA01_cons_buff_1, %of_in_mainA01_cons_buff_2, %of_out_mainA01_buff_0, %c768_i32_16) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_17 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_0_cons_buff_0, %of_in_mainA01_cons_buff_4, %of_in_mainA01_cons_buff_5, %of_in_mainA01_cons_buff_0, %of_in_mainA01_cons_buff_1, %of_in_mainA01_cons_buff_2, %of_out_mainA01_buff_1, %c768_i32_17) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      %13 = arith.addi %11, %c2_15 : index
      cf.br ^bb9(%13 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%of_in_mainA01_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_18 = arith.constant 0 : index
      %14 = memref.load %in0_0_cons_buff_1[%c0_18] : memref<96xbf16>
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA01_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_19 = arith.constant 0 : index
      %c2048_20 = arith.constant 2048 : index
      %c1_21 = arith.constant 1 : index
      %c2_22 = arith.constant 2 : index
      cf.br ^bb12(%c0_19 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c2048_20 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_23 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_0_cons_buff_0, %of_in_mainA01_cons_buff_3, %of_in_mainA01_cons_buff_4, %of_in_mainA01_cons_buff_5, %of_in_mainA01_cons_buff_0, %of_in_mainA01_cons_buff_1, %of_out_mainA01_buff_0, %c768_i32_23) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_24 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_0_cons_buff_1, %of_in_mainA01_cons_buff_3, %of_in_mainA01_cons_buff_4, %of_in_mainA01_cons_buff_5, %of_in_mainA01_cons_buff_0, %of_in_mainA01_cons_buff_1, %of_out_mainA01_buff_1, %c768_i32_24) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      %17 = arith.addi %15, %c2_22 : index
      cf.br ^bb12(%17 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%of_in_mainA01_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_25 = arith.constant 0 : index
      %18 = memref.load %in0_0_cons_buff_0[%c0_25] : memref<96xbf16>
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA01_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_26 = arith.constant 0 : index
      %c2048_27 = arith.constant 2048 : index
      %c1_28 = arith.constant 1 : index
      %c2_29 = arith.constant 2 : index
      cf.br ^bb15(%c0_26 : index)
    ^bb15(%19: index):  // 2 preds: ^bb14, ^bb16
      %20 = arith.cmpi slt, %19, %c2048_27 : index
      cf.cond_br %20, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_30 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_0_cons_buff_1, %of_in_mainA01_cons_buff_2, %of_in_mainA01_cons_buff_3, %of_in_mainA01_cons_buff_4, %of_in_mainA01_cons_buff_5, %of_in_mainA01_cons_buff_0, %of_out_mainA01_buff_0, %c768_i32_30) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_31 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_0_cons_buff_0, %of_in_mainA01_cons_buff_2, %of_in_mainA01_cons_buff_3, %of_in_mainA01_cons_buff_4, %of_in_mainA01_cons_buff_5, %of_in_mainA01_cons_buff_0, %of_out_mainA01_buff_1, %c768_i32_31) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      %21 = arith.addi %19, %c2_29 : index
      cf.br ^bb15(%21 : index)
    ^bb17:  // pred: ^bb15
      aie.use_lock(%of_in_mainA01_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_32 = arith.constant 0 : index
      %22 = memref.load %in0_0_cons_buff_1[%c0_32] : memref<96xbf16>
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA01_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_33 = arith.constant 0 : index
      %c2048_34 = arith.constant 2048 : index
      %c1_35 = arith.constant 1 : index
      %c2_36 = arith.constant 2 : index
      cf.br ^bb18(%c0_33 : index)
    ^bb18(%23: index):  // 2 preds: ^bb17, ^bb19
      %24 = arith.cmpi slt, %23, %c2048_34 : index
      cf.cond_br %24, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_37 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_0_cons_buff_0, %of_in_mainA01_cons_buff_1, %of_in_mainA01_cons_buff_2, %of_in_mainA01_cons_buff_3, %of_in_mainA01_cons_buff_4, %of_in_mainA01_cons_buff_5, %of_out_mainA01_buff_0, %c768_i32_37) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_38 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_0_cons_buff_1, %of_in_mainA01_cons_buff_1, %of_in_mainA01_cons_buff_2, %of_in_mainA01_cons_buff_3, %of_in_mainA01_cons_buff_4, %of_in_mainA01_cons_buff_5, %of_out_mainA01_buff_1, %c768_i32_38) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      %25 = arith.addi %23, %c2_36 : index
      cf.br ^bb18(%25 : index)
    ^bb20:  // pred: ^bb18
      aie.use_lock(%of_in_mainA01_cons_prod_lock, Release, 5)
      %26 = arith.addi %0, %c6 : index
      cf.br ^bb1(%26 : index)
    ^bb21:  // pred: ^bb1
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_39 = arith.constant 0 : index
      %27 = memref.load %in0_0_cons_buff_0[%c0_39] : memref<96xbf16>
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA01_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_40 = arith.constant 0 : index
      %c2048_41 = arith.constant 2048 : index
      %c1_42 = arith.constant 1 : index
      %c2_43 = arith.constant 2 : index
      cf.br ^bb22(%c0_40 : index)
    ^bb22(%28: index):  // 2 preds: ^bb21, ^bb23
      %29 = arith.cmpi slt, %28, %c2048_41 : index
      cf.cond_br %29, ^bb23, ^bb24
    ^bb23:  // pred: ^bb22
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_44 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_0_cons_buff_1, %of_in_mainA01_cons_buff_0, %of_in_mainA01_cons_buff_1, %of_in_mainA01_cons_buff_2, %of_in_mainA01_cons_buff_3, %of_in_mainA01_cons_buff_4, %of_out_mainA01_buff_0, %c768_i32_44) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_0_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_45 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_0_cons_buff_0, %of_in_mainA01_cons_buff_0, %of_in_mainA01_cons_buff_1, %of_in_mainA01_cons_buff_2, %of_in_mainA01_cons_buff_3, %of_in_mainA01_cons_buff_4, %of_out_mainA01_buff_1, %c768_i32_45) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%in0_0_cons_prod_lock, Release, 1)
      %30 = arith.addi %28, %c2_43 : index
      cf.br ^bb22(%30 : index)
    ^bb24:  // pred: ^bb22
      aie.use_lock(%of_in_mainA01_cons_prod_lock, Release, 5)
      aie.end
    } {link_with = "kernels.a"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c6 = arith.constant 6 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb20
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %2 = memref.load %in0_6_cons_buff_0[%c0_0] : memref<96xbf16>
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB21_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_1 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c1_2 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_1 : index)
    ^bb3(%3: index):  // 2 preds: ^bb2, ^bb4
      %4 = arith.cmpi slt, %3, %c2048 : index
      cf.cond_br %4, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_6_cons_buff_1, %of_in_mainB21_cons_buff_0, %of_in_mainB21_cons_buff_1, %of_in_mainB21_cons_buff_2, %of_in_mainB21_cons_buff_3, %of_in_mainB21_cons_buff_4, %of_out_mainB21_buff_0, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_3 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_6_cons_buff_0, %of_in_mainB21_cons_buff_0, %of_in_mainB21_cons_buff_1, %of_in_mainB21_cons_buff_2, %of_in_mainB21_cons_buff_3, %of_in_mainB21_cons_buff_4, %of_out_mainB21_buff_1, %c768_i32_3) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      %5 = arith.addi %3, %c2 : index
      cf.br ^bb3(%5 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainB21_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %6 = memref.load %in0_6_cons_buff_1[%c0_4] : memref<96xbf16>
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB21_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_5 = arith.constant 0 : index
      %c2048_6 = arith.constant 2048 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c2048_6 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_9 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_6_cons_buff_0, %of_in_mainB21_cons_buff_5, %of_in_mainB21_cons_buff_0, %of_in_mainB21_cons_buff_1, %of_in_mainB21_cons_buff_2, %of_in_mainB21_cons_buff_3, %of_out_mainB21_buff_0, %c768_i32_9) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_10 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_6_cons_buff_1, %of_in_mainB21_cons_buff_5, %of_in_mainB21_cons_buff_0, %of_in_mainB21_cons_buff_1, %of_in_mainB21_cons_buff_2, %of_in_mainB21_cons_buff_3, %of_out_mainB21_buff_1, %c768_i32_10) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb6(%9 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainB21_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_11 = arith.constant 0 : index
      %10 = memref.load %in0_6_cons_buff_0[%c0_11] : memref<96xbf16>
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB21_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_12 = arith.constant 0 : index
      %c2048_13 = arith.constant 2048 : index
      %c1_14 = arith.constant 1 : index
      %c2_15 = arith.constant 2 : index
      cf.br ^bb9(%c0_12 : index)
    ^bb9(%11: index):  // 2 preds: ^bb8, ^bb10
      %12 = arith.cmpi slt, %11, %c2048_13 : index
      cf.cond_br %12, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_16 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_6_cons_buff_1, %of_in_mainB21_cons_buff_4, %of_in_mainB21_cons_buff_5, %of_in_mainB21_cons_buff_0, %of_in_mainB21_cons_buff_1, %of_in_mainB21_cons_buff_2, %of_out_mainB21_buff_0, %c768_i32_16) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_17 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_6_cons_buff_0, %of_in_mainB21_cons_buff_4, %of_in_mainB21_cons_buff_5, %of_in_mainB21_cons_buff_0, %of_in_mainB21_cons_buff_1, %of_in_mainB21_cons_buff_2, %of_out_mainB21_buff_1, %c768_i32_17) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      %13 = arith.addi %11, %c2_15 : index
      cf.br ^bb9(%13 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%of_in_mainB21_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_18 = arith.constant 0 : index
      %14 = memref.load %in0_6_cons_buff_1[%c0_18] : memref<96xbf16>
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB21_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_19 = arith.constant 0 : index
      %c2048_20 = arith.constant 2048 : index
      %c1_21 = arith.constant 1 : index
      %c2_22 = arith.constant 2 : index
      cf.br ^bb12(%c0_19 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c2048_20 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_23 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_6_cons_buff_0, %of_in_mainB21_cons_buff_3, %of_in_mainB21_cons_buff_4, %of_in_mainB21_cons_buff_5, %of_in_mainB21_cons_buff_0, %of_in_mainB21_cons_buff_1, %of_out_mainB21_buff_0, %c768_i32_23) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_24 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_6_cons_buff_1, %of_in_mainB21_cons_buff_3, %of_in_mainB21_cons_buff_4, %of_in_mainB21_cons_buff_5, %of_in_mainB21_cons_buff_0, %of_in_mainB21_cons_buff_1, %of_out_mainB21_buff_1, %c768_i32_24) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      %17 = arith.addi %15, %c2_22 : index
      cf.br ^bb12(%17 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%of_in_mainB21_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_25 = arith.constant 0 : index
      %18 = memref.load %in0_6_cons_buff_0[%c0_25] : memref<96xbf16>
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB21_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_26 = arith.constant 0 : index
      %c2048_27 = arith.constant 2048 : index
      %c1_28 = arith.constant 1 : index
      %c2_29 = arith.constant 2 : index
      cf.br ^bb15(%c0_26 : index)
    ^bb15(%19: index):  // 2 preds: ^bb14, ^bb16
      %20 = arith.cmpi slt, %19, %c2048_27 : index
      cf.cond_br %20, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_30 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_6_cons_buff_1, %of_in_mainB21_cons_buff_2, %of_in_mainB21_cons_buff_3, %of_in_mainB21_cons_buff_4, %of_in_mainB21_cons_buff_5, %of_in_mainB21_cons_buff_0, %of_out_mainB21_buff_0, %c768_i32_30) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_31 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_6_cons_buff_0, %of_in_mainB21_cons_buff_2, %of_in_mainB21_cons_buff_3, %of_in_mainB21_cons_buff_4, %of_in_mainB21_cons_buff_5, %of_in_mainB21_cons_buff_0, %of_out_mainB21_buff_1, %c768_i32_31) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      %21 = arith.addi %19, %c2_29 : index
      cf.br ^bb15(%21 : index)
    ^bb17:  // pred: ^bb15
      aie.use_lock(%of_in_mainB21_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_32 = arith.constant 0 : index
      %22 = memref.load %in0_6_cons_buff_1[%c0_32] : memref<96xbf16>
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB21_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_33 = arith.constant 0 : index
      %c2048_34 = arith.constant 2048 : index
      %c1_35 = arith.constant 1 : index
      %c2_36 = arith.constant 2 : index
      cf.br ^bb18(%c0_33 : index)
    ^bb18(%23: index):  // 2 preds: ^bb17, ^bb19
      %24 = arith.cmpi slt, %23, %c2048_34 : index
      cf.cond_br %24, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_37 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_6_cons_buff_0, %of_in_mainB21_cons_buff_1, %of_in_mainB21_cons_buff_2, %of_in_mainB21_cons_buff_3, %of_in_mainB21_cons_buff_4, %of_in_mainB21_cons_buff_5, %of_out_mainB21_buff_0, %c768_i32_37) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_38 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_6_cons_buff_1, %of_in_mainB21_cons_buff_1, %of_in_mainB21_cons_buff_2, %of_in_mainB21_cons_buff_3, %of_in_mainB21_cons_buff_4, %of_in_mainB21_cons_buff_5, %of_out_mainB21_buff_1, %c768_i32_38) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      %25 = arith.addi %23, %c2_36 : index
      cf.br ^bb18(%25 : index)
    ^bb20:  // pred: ^bb18
      aie.use_lock(%of_in_mainB21_cons_prod_lock, Release, 5)
      %26 = arith.addi %0, %c6 : index
      cf.br ^bb1(%26 : index)
    ^bb21:  // pred: ^bb1
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_39 = arith.constant 0 : index
      %27 = memref.load %in0_6_cons_buff_0[%c0_39] : memref<96xbf16>
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB21_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_40 = arith.constant 0 : index
      %c2048_41 = arith.constant 2048 : index
      %c1_42 = arith.constant 1 : index
      %c2_43 = arith.constant 2 : index
      cf.br ^bb22(%c0_40 : index)
    ^bb22(%28: index):  // 2 preds: ^bb21, ^bb23
      %29 = arith.cmpi slt, %28, %c2048_41 : index
      cf.cond_br %29, ^bb23, ^bb24
    ^bb23:  // pred: ^bb22
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_44 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_6_cons_buff_1, %of_in_mainB21_cons_buff_0, %of_in_mainB21_cons_buff_1, %of_in_mainB21_cons_buff_2, %of_in_mainB21_cons_buff_3, %of_in_mainB21_cons_buff_4, %of_out_mainB21_buff_0, %c768_i32_44) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_6_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_45 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_6_cons_buff_0, %of_in_mainB21_cons_buff_0, %of_in_mainB21_cons_buff_1, %of_in_mainB21_cons_buff_2, %of_in_mainB21_cons_buff_3, %of_in_mainB21_cons_buff_4, %of_out_mainB21_buff_1, %c768_i32_45) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%in0_6_cons_prod_lock, Release, 1)
      %30 = arith.addi %28, %c2_43 : index
      cf.br ^bb22(%30 : index)
    ^bb24:  // pred: ^bb22
      aie.use_lock(%of_in_mainB21_cons_prod_lock, Release, 5)
      aie.end
    } {link_with = "kernels.a"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c6 = arith.constant 6 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb20
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %2 = memref.load %in0_1_cons_buff_0[%c0_0] : memref<96xbf16>
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA02_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_1 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c1_2 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_1 : index)
    ^bb3(%3: index):  // 2 preds: ^bb2, ^bb4
      %4 = arith.cmpi slt, %3, %c2048 : index
      cf.cond_br %4, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_1_cons_buff_1, %of_in_mainA02_cons_buff_0, %of_in_mainA02_cons_buff_1, %of_in_mainA02_cons_buff_2, %of_in_mainA02_cons_buff_3, %of_in_mainA02_cons_buff_4, %of_out_mainA02_buff_0, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_3 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_1_cons_buff_0, %of_in_mainA02_cons_buff_0, %of_in_mainA02_cons_buff_1, %of_in_mainA02_cons_buff_2, %of_in_mainA02_cons_buff_3, %of_in_mainA02_cons_buff_4, %of_out_mainA02_buff_1, %c768_i32_3) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      %5 = arith.addi %3, %c2 : index
      cf.br ^bb3(%5 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainA02_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %6 = memref.load %in0_1_cons_buff_1[%c0_4] : memref<96xbf16>
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA02_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_5 = arith.constant 0 : index
      %c2048_6 = arith.constant 2048 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c2048_6 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_9 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_1_cons_buff_0, %of_in_mainA02_cons_buff_5, %of_in_mainA02_cons_buff_0, %of_in_mainA02_cons_buff_1, %of_in_mainA02_cons_buff_2, %of_in_mainA02_cons_buff_3, %of_out_mainA02_buff_0, %c768_i32_9) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_10 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_1_cons_buff_1, %of_in_mainA02_cons_buff_5, %of_in_mainA02_cons_buff_0, %of_in_mainA02_cons_buff_1, %of_in_mainA02_cons_buff_2, %of_in_mainA02_cons_buff_3, %of_out_mainA02_buff_1, %c768_i32_10) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb6(%9 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainA02_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_11 = arith.constant 0 : index
      %10 = memref.load %in0_1_cons_buff_0[%c0_11] : memref<96xbf16>
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA02_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_12 = arith.constant 0 : index
      %c2048_13 = arith.constant 2048 : index
      %c1_14 = arith.constant 1 : index
      %c2_15 = arith.constant 2 : index
      cf.br ^bb9(%c0_12 : index)
    ^bb9(%11: index):  // 2 preds: ^bb8, ^bb10
      %12 = arith.cmpi slt, %11, %c2048_13 : index
      cf.cond_br %12, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_16 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_1_cons_buff_1, %of_in_mainA02_cons_buff_4, %of_in_mainA02_cons_buff_5, %of_in_mainA02_cons_buff_0, %of_in_mainA02_cons_buff_1, %of_in_mainA02_cons_buff_2, %of_out_mainA02_buff_0, %c768_i32_16) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_17 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_1_cons_buff_0, %of_in_mainA02_cons_buff_4, %of_in_mainA02_cons_buff_5, %of_in_mainA02_cons_buff_0, %of_in_mainA02_cons_buff_1, %of_in_mainA02_cons_buff_2, %of_out_mainA02_buff_1, %c768_i32_17) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      %13 = arith.addi %11, %c2_15 : index
      cf.br ^bb9(%13 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%of_in_mainA02_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_18 = arith.constant 0 : index
      %14 = memref.load %in0_1_cons_buff_1[%c0_18] : memref<96xbf16>
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA02_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_19 = arith.constant 0 : index
      %c2048_20 = arith.constant 2048 : index
      %c1_21 = arith.constant 1 : index
      %c2_22 = arith.constant 2 : index
      cf.br ^bb12(%c0_19 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c2048_20 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_23 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_1_cons_buff_0, %of_in_mainA02_cons_buff_3, %of_in_mainA02_cons_buff_4, %of_in_mainA02_cons_buff_5, %of_in_mainA02_cons_buff_0, %of_in_mainA02_cons_buff_1, %of_out_mainA02_buff_0, %c768_i32_23) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_24 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_1_cons_buff_1, %of_in_mainA02_cons_buff_3, %of_in_mainA02_cons_buff_4, %of_in_mainA02_cons_buff_5, %of_in_mainA02_cons_buff_0, %of_in_mainA02_cons_buff_1, %of_out_mainA02_buff_1, %c768_i32_24) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      %17 = arith.addi %15, %c2_22 : index
      cf.br ^bb12(%17 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%of_in_mainA02_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_25 = arith.constant 0 : index
      %18 = memref.load %in0_1_cons_buff_0[%c0_25] : memref<96xbf16>
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA02_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_26 = arith.constant 0 : index
      %c2048_27 = arith.constant 2048 : index
      %c1_28 = arith.constant 1 : index
      %c2_29 = arith.constant 2 : index
      cf.br ^bb15(%c0_26 : index)
    ^bb15(%19: index):  // 2 preds: ^bb14, ^bb16
      %20 = arith.cmpi slt, %19, %c2048_27 : index
      cf.cond_br %20, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_30 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_1_cons_buff_1, %of_in_mainA02_cons_buff_2, %of_in_mainA02_cons_buff_3, %of_in_mainA02_cons_buff_4, %of_in_mainA02_cons_buff_5, %of_in_mainA02_cons_buff_0, %of_out_mainA02_buff_0, %c768_i32_30) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_31 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_1_cons_buff_0, %of_in_mainA02_cons_buff_2, %of_in_mainA02_cons_buff_3, %of_in_mainA02_cons_buff_4, %of_in_mainA02_cons_buff_5, %of_in_mainA02_cons_buff_0, %of_out_mainA02_buff_1, %c768_i32_31) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      %21 = arith.addi %19, %c2_29 : index
      cf.br ^bb15(%21 : index)
    ^bb17:  // pred: ^bb15
      aie.use_lock(%of_in_mainA02_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_32 = arith.constant 0 : index
      %22 = memref.load %in0_1_cons_buff_1[%c0_32] : memref<96xbf16>
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA02_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_33 = arith.constant 0 : index
      %c2048_34 = arith.constant 2048 : index
      %c1_35 = arith.constant 1 : index
      %c2_36 = arith.constant 2 : index
      cf.br ^bb18(%c0_33 : index)
    ^bb18(%23: index):  // 2 preds: ^bb17, ^bb19
      %24 = arith.cmpi slt, %23, %c2048_34 : index
      cf.cond_br %24, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_37 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_1_cons_buff_0, %of_in_mainA02_cons_buff_1, %of_in_mainA02_cons_buff_2, %of_in_mainA02_cons_buff_3, %of_in_mainA02_cons_buff_4, %of_in_mainA02_cons_buff_5, %of_out_mainA02_buff_0, %c768_i32_37) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_38 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_1_cons_buff_1, %of_in_mainA02_cons_buff_1, %of_in_mainA02_cons_buff_2, %of_in_mainA02_cons_buff_3, %of_in_mainA02_cons_buff_4, %of_in_mainA02_cons_buff_5, %of_out_mainA02_buff_1, %c768_i32_38) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      %25 = arith.addi %23, %c2_36 : index
      cf.br ^bb18(%25 : index)
    ^bb20:  // pred: ^bb18
      aie.use_lock(%of_in_mainA02_cons_prod_lock, Release, 5)
      %26 = arith.addi %0, %c6 : index
      cf.br ^bb1(%26 : index)
    ^bb21:  // pred: ^bb1
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_39 = arith.constant 0 : index
      %27 = memref.load %in0_1_cons_buff_0[%c0_39] : memref<96xbf16>
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA02_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_40 = arith.constant 0 : index
      %c2048_41 = arith.constant 2048 : index
      %c1_42 = arith.constant 1 : index
      %c2_43 = arith.constant 2 : index
      cf.br ^bb22(%c0_40 : index)
    ^bb22(%28: index):  // 2 preds: ^bb21, ^bb23
      %29 = arith.cmpi slt, %28, %c2048_41 : index
      cf.cond_br %29, ^bb23, ^bb24
    ^bb23:  // pred: ^bb22
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_44 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_1_cons_buff_1, %of_in_mainA02_cons_buff_0, %of_in_mainA02_cons_buff_1, %of_in_mainA02_cons_buff_2, %of_in_mainA02_cons_buff_3, %of_in_mainA02_cons_buff_4, %of_out_mainA02_buff_0, %c768_i32_44) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_45 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_1_cons_buff_0, %of_in_mainA02_cons_buff_0, %of_in_mainA02_cons_buff_1, %of_in_mainA02_cons_buff_2, %of_in_mainA02_cons_buff_3, %of_in_mainA02_cons_buff_4, %of_out_mainA02_buff_1, %c768_i32_45) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%in0_1_cons_prod_lock, Release, 1)
      %30 = arith.addi %28, %c2_43 : index
      cf.br ^bb22(%30 : index)
    ^bb24:  // pred: ^bb22
      aie.use_lock(%of_in_mainA02_cons_prod_lock, Release, 5)
      aie.end
    } {link_with = "kernels.a"}
    %core_2_4 = aie.core(%tile_2_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c6 = arith.constant 6 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb20
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %2 = memref.load %in0_7_cons_buff_0[%c0_0] : memref<96xbf16>
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB22_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_1 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c1_2 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_1 : index)
    ^bb3(%3: index):  // 2 preds: ^bb2, ^bb4
      %4 = arith.cmpi slt, %3, %c2048 : index
      cf.cond_br %4, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_7_cons_buff_1, %of_in_mainB22_cons_buff_0, %of_in_mainB22_cons_buff_1, %of_in_mainB22_cons_buff_2, %of_in_mainB22_cons_buff_3, %of_in_mainB22_cons_buff_4, %of_out_mainB22_buff_0, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_3 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_7_cons_buff_0, %of_in_mainB22_cons_buff_0, %of_in_mainB22_cons_buff_1, %of_in_mainB22_cons_buff_2, %of_in_mainB22_cons_buff_3, %of_in_mainB22_cons_buff_4, %of_out_mainB22_buff_1, %c768_i32_3) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      %5 = arith.addi %3, %c2 : index
      cf.br ^bb3(%5 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainB22_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %6 = memref.load %in0_7_cons_buff_1[%c0_4] : memref<96xbf16>
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB22_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_5 = arith.constant 0 : index
      %c2048_6 = arith.constant 2048 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c2048_6 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_9 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_7_cons_buff_0, %of_in_mainB22_cons_buff_5, %of_in_mainB22_cons_buff_0, %of_in_mainB22_cons_buff_1, %of_in_mainB22_cons_buff_2, %of_in_mainB22_cons_buff_3, %of_out_mainB22_buff_0, %c768_i32_9) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_10 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_7_cons_buff_1, %of_in_mainB22_cons_buff_5, %of_in_mainB22_cons_buff_0, %of_in_mainB22_cons_buff_1, %of_in_mainB22_cons_buff_2, %of_in_mainB22_cons_buff_3, %of_out_mainB22_buff_1, %c768_i32_10) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb6(%9 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainB22_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_11 = arith.constant 0 : index
      %10 = memref.load %in0_7_cons_buff_0[%c0_11] : memref<96xbf16>
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB22_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_12 = arith.constant 0 : index
      %c2048_13 = arith.constant 2048 : index
      %c1_14 = arith.constant 1 : index
      %c2_15 = arith.constant 2 : index
      cf.br ^bb9(%c0_12 : index)
    ^bb9(%11: index):  // 2 preds: ^bb8, ^bb10
      %12 = arith.cmpi slt, %11, %c2048_13 : index
      cf.cond_br %12, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_16 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_7_cons_buff_1, %of_in_mainB22_cons_buff_4, %of_in_mainB22_cons_buff_5, %of_in_mainB22_cons_buff_0, %of_in_mainB22_cons_buff_1, %of_in_mainB22_cons_buff_2, %of_out_mainB22_buff_0, %c768_i32_16) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_17 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_7_cons_buff_0, %of_in_mainB22_cons_buff_4, %of_in_mainB22_cons_buff_5, %of_in_mainB22_cons_buff_0, %of_in_mainB22_cons_buff_1, %of_in_mainB22_cons_buff_2, %of_out_mainB22_buff_1, %c768_i32_17) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      %13 = arith.addi %11, %c2_15 : index
      cf.br ^bb9(%13 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%of_in_mainB22_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_18 = arith.constant 0 : index
      %14 = memref.load %in0_7_cons_buff_1[%c0_18] : memref<96xbf16>
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB22_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_19 = arith.constant 0 : index
      %c2048_20 = arith.constant 2048 : index
      %c1_21 = arith.constant 1 : index
      %c2_22 = arith.constant 2 : index
      cf.br ^bb12(%c0_19 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c2048_20 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_23 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_7_cons_buff_0, %of_in_mainB22_cons_buff_3, %of_in_mainB22_cons_buff_4, %of_in_mainB22_cons_buff_5, %of_in_mainB22_cons_buff_0, %of_in_mainB22_cons_buff_1, %of_out_mainB22_buff_0, %c768_i32_23) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_24 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_7_cons_buff_1, %of_in_mainB22_cons_buff_3, %of_in_mainB22_cons_buff_4, %of_in_mainB22_cons_buff_5, %of_in_mainB22_cons_buff_0, %of_in_mainB22_cons_buff_1, %of_out_mainB22_buff_1, %c768_i32_24) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      %17 = arith.addi %15, %c2_22 : index
      cf.br ^bb12(%17 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%of_in_mainB22_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_25 = arith.constant 0 : index
      %18 = memref.load %in0_7_cons_buff_0[%c0_25] : memref<96xbf16>
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB22_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_26 = arith.constant 0 : index
      %c2048_27 = arith.constant 2048 : index
      %c1_28 = arith.constant 1 : index
      %c2_29 = arith.constant 2 : index
      cf.br ^bb15(%c0_26 : index)
    ^bb15(%19: index):  // 2 preds: ^bb14, ^bb16
      %20 = arith.cmpi slt, %19, %c2048_27 : index
      cf.cond_br %20, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_30 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_7_cons_buff_1, %of_in_mainB22_cons_buff_2, %of_in_mainB22_cons_buff_3, %of_in_mainB22_cons_buff_4, %of_in_mainB22_cons_buff_5, %of_in_mainB22_cons_buff_0, %of_out_mainB22_buff_0, %c768_i32_30) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_31 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_7_cons_buff_0, %of_in_mainB22_cons_buff_2, %of_in_mainB22_cons_buff_3, %of_in_mainB22_cons_buff_4, %of_in_mainB22_cons_buff_5, %of_in_mainB22_cons_buff_0, %of_out_mainB22_buff_1, %c768_i32_31) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      %21 = arith.addi %19, %c2_29 : index
      cf.br ^bb15(%21 : index)
    ^bb17:  // pred: ^bb15
      aie.use_lock(%of_in_mainB22_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_32 = arith.constant 0 : index
      %22 = memref.load %in0_7_cons_buff_1[%c0_32] : memref<96xbf16>
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB22_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_33 = arith.constant 0 : index
      %c2048_34 = arith.constant 2048 : index
      %c1_35 = arith.constant 1 : index
      %c2_36 = arith.constant 2 : index
      cf.br ^bb18(%c0_33 : index)
    ^bb18(%23: index):  // 2 preds: ^bb17, ^bb19
      %24 = arith.cmpi slt, %23, %c2048_34 : index
      cf.cond_br %24, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_37 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_7_cons_buff_0, %of_in_mainB22_cons_buff_1, %of_in_mainB22_cons_buff_2, %of_in_mainB22_cons_buff_3, %of_in_mainB22_cons_buff_4, %of_in_mainB22_cons_buff_5, %of_out_mainB22_buff_0, %c768_i32_37) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_38 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_7_cons_buff_1, %of_in_mainB22_cons_buff_1, %of_in_mainB22_cons_buff_2, %of_in_mainB22_cons_buff_3, %of_in_mainB22_cons_buff_4, %of_in_mainB22_cons_buff_5, %of_out_mainB22_buff_1, %c768_i32_38) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      %25 = arith.addi %23, %c2_36 : index
      cf.br ^bb18(%25 : index)
    ^bb20:  // pred: ^bb18
      aie.use_lock(%of_in_mainB22_cons_prod_lock, Release, 5)
      %26 = arith.addi %0, %c6 : index
      cf.br ^bb1(%26 : index)
    ^bb21:  // pred: ^bb1
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_39 = arith.constant 0 : index
      %27 = memref.load %in0_7_cons_buff_0[%c0_39] : memref<96xbf16>
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB22_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_40 = arith.constant 0 : index
      %c2048_41 = arith.constant 2048 : index
      %c1_42 = arith.constant 1 : index
      %c2_43 = arith.constant 2 : index
      cf.br ^bb22(%c0_40 : index)
    ^bb22(%28: index):  // 2 preds: ^bb21, ^bb23
      %29 = arith.cmpi slt, %28, %c2048_41 : index
      cf.cond_br %29, ^bb23, ^bb24
    ^bb23:  // pred: ^bb22
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_44 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_7_cons_buff_1, %of_in_mainB22_cons_buff_0, %of_in_mainB22_cons_buff_1, %of_in_mainB22_cons_buff_2, %of_in_mainB22_cons_buff_3, %of_in_mainB22_cons_buff_4, %of_out_mainB22_buff_0, %c768_i32_44) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_7_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_45 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_7_cons_buff_0, %of_in_mainB22_cons_buff_0, %of_in_mainB22_cons_buff_1, %of_in_mainB22_cons_buff_2, %of_in_mainB22_cons_buff_3, %of_in_mainB22_cons_buff_4, %of_out_mainB22_buff_1, %c768_i32_45) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%in0_7_cons_prod_lock, Release, 1)
      %30 = arith.addi %28, %c2_43 : index
      cf.br ^bb22(%30 : index)
    ^bb24:  // pred: ^bb22
      aie.use_lock(%of_in_mainB22_cons_prod_lock, Release, 5)
      aie.end
    } {link_with = "kernels.a"}
    %core_0_5 = aie.core(%tile_0_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c6 = arith.constant 6 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb20
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %2 = memref.load %in0_2_cons_buff_0[%c0_0] : memref<96xbf16>
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA03_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_1 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c1_2 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_1 : index)
    ^bb3(%3: index):  // 2 preds: ^bb2, ^bb4
      %4 = arith.cmpi slt, %3, %c2048 : index
      cf.cond_br %4, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_2_cons_buff_1, %of_in_mainA03_cons_buff_0, %of_in_mainA03_cons_buff_1, %of_in_mainA03_cons_buff_2, %of_in_mainA03_cons_buff_3, %of_in_mainA03_cons_buff_4, %of_out_mainA03_buff_0, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_3 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_2_cons_buff_0, %of_in_mainA03_cons_buff_0, %of_in_mainA03_cons_buff_1, %of_in_mainA03_cons_buff_2, %of_in_mainA03_cons_buff_3, %of_in_mainA03_cons_buff_4, %of_out_mainA03_buff_1, %c768_i32_3) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      %5 = arith.addi %3, %c2 : index
      cf.br ^bb3(%5 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainA03_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %6 = memref.load %in0_2_cons_buff_1[%c0_4] : memref<96xbf16>
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA03_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_5 = arith.constant 0 : index
      %c2048_6 = arith.constant 2048 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c2048_6 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_9 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_2_cons_buff_0, %of_in_mainA03_cons_buff_5, %of_in_mainA03_cons_buff_0, %of_in_mainA03_cons_buff_1, %of_in_mainA03_cons_buff_2, %of_in_mainA03_cons_buff_3, %of_out_mainA03_buff_0, %c768_i32_9) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_10 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_2_cons_buff_1, %of_in_mainA03_cons_buff_5, %of_in_mainA03_cons_buff_0, %of_in_mainA03_cons_buff_1, %of_in_mainA03_cons_buff_2, %of_in_mainA03_cons_buff_3, %of_out_mainA03_buff_1, %c768_i32_10) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb6(%9 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainA03_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_11 = arith.constant 0 : index
      %10 = memref.load %in0_2_cons_buff_0[%c0_11] : memref<96xbf16>
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA03_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_12 = arith.constant 0 : index
      %c2048_13 = arith.constant 2048 : index
      %c1_14 = arith.constant 1 : index
      %c2_15 = arith.constant 2 : index
      cf.br ^bb9(%c0_12 : index)
    ^bb9(%11: index):  // 2 preds: ^bb8, ^bb10
      %12 = arith.cmpi slt, %11, %c2048_13 : index
      cf.cond_br %12, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_16 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_2_cons_buff_1, %of_in_mainA03_cons_buff_4, %of_in_mainA03_cons_buff_5, %of_in_mainA03_cons_buff_0, %of_in_mainA03_cons_buff_1, %of_in_mainA03_cons_buff_2, %of_out_mainA03_buff_0, %c768_i32_16) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_17 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_2_cons_buff_0, %of_in_mainA03_cons_buff_4, %of_in_mainA03_cons_buff_5, %of_in_mainA03_cons_buff_0, %of_in_mainA03_cons_buff_1, %of_in_mainA03_cons_buff_2, %of_out_mainA03_buff_1, %c768_i32_17) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      %13 = arith.addi %11, %c2_15 : index
      cf.br ^bb9(%13 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%of_in_mainA03_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_18 = arith.constant 0 : index
      %14 = memref.load %in0_2_cons_buff_1[%c0_18] : memref<96xbf16>
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA03_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_19 = arith.constant 0 : index
      %c2048_20 = arith.constant 2048 : index
      %c1_21 = arith.constant 1 : index
      %c2_22 = arith.constant 2 : index
      cf.br ^bb12(%c0_19 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c2048_20 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_23 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_2_cons_buff_0, %of_in_mainA03_cons_buff_3, %of_in_mainA03_cons_buff_4, %of_in_mainA03_cons_buff_5, %of_in_mainA03_cons_buff_0, %of_in_mainA03_cons_buff_1, %of_out_mainA03_buff_0, %c768_i32_23) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_24 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_2_cons_buff_1, %of_in_mainA03_cons_buff_3, %of_in_mainA03_cons_buff_4, %of_in_mainA03_cons_buff_5, %of_in_mainA03_cons_buff_0, %of_in_mainA03_cons_buff_1, %of_out_mainA03_buff_1, %c768_i32_24) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      %17 = arith.addi %15, %c2_22 : index
      cf.br ^bb12(%17 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%of_in_mainA03_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_25 = arith.constant 0 : index
      %18 = memref.load %in0_2_cons_buff_0[%c0_25] : memref<96xbf16>
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA03_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_26 = arith.constant 0 : index
      %c2048_27 = arith.constant 2048 : index
      %c1_28 = arith.constant 1 : index
      %c2_29 = arith.constant 2 : index
      cf.br ^bb15(%c0_26 : index)
    ^bb15(%19: index):  // 2 preds: ^bb14, ^bb16
      %20 = arith.cmpi slt, %19, %c2048_27 : index
      cf.cond_br %20, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_30 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_2_cons_buff_1, %of_in_mainA03_cons_buff_2, %of_in_mainA03_cons_buff_3, %of_in_mainA03_cons_buff_4, %of_in_mainA03_cons_buff_5, %of_in_mainA03_cons_buff_0, %of_out_mainA03_buff_0, %c768_i32_30) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_31 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_2_cons_buff_0, %of_in_mainA03_cons_buff_2, %of_in_mainA03_cons_buff_3, %of_in_mainA03_cons_buff_4, %of_in_mainA03_cons_buff_5, %of_in_mainA03_cons_buff_0, %of_out_mainA03_buff_1, %c768_i32_31) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      %21 = arith.addi %19, %c2_29 : index
      cf.br ^bb15(%21 : index)
    ^bb17:  // pred: ^bb15
      aie.use_lock(%of_in_mainA03_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_32 = arith.constant 0 : index
      %22 = memref.load %in0_2_cons_buff_1[%c0_32] : memref<96xbf16>
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA03_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_33 = arith.constant 0 : index
      %c2048_34 = arith.constant 2048 : index
      %c1_35 = arith.constant 1 : index
      %c2_36 = arith.constant 2 : index
      cf.br ^bb18(%c0_33 : index)
    ^bb18(%23: index):  // 2 preds: ^bb17, ^bb19
      %24 = arith.cmpi slt, %23, %c2048_34 : index
      cf.cond_br %24, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_37 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_2_cons_buff_0, %of_in_mainA03_cons_buff_1, %of_in_mainA03_cons_buff_2, %of_in_mainA03_cons_buff_3, %of_in_mainA03_cons_buff_4, %of_in_mainA03_cons_buff_5, %of_out_mainA03_buff_0, %c768_i32_37) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_38 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_2_cons_buff_1, %of_in_mainA03_cons_buff_1, %of_in_mainA03_cons_buff_2, %of_in_mainA03_cons_buff_3, %of_in_mainA03_cons_buff_4, %of_in_mainA03_cons_buff_5, %of_out_mainA03_buff_1, %c768_i32_38) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      %25 = arith.addi %23, %c2_36 : index
      cf.br ^bb18(%25 : index)
    ^bb20:  // pred: ^bb18
      aie.use_lock(%of_in_mainA03_cons_prod_lock, Release, 5)
      %26 = arith.addi %0, %c6 : index
      cf.br ^bb1(%26 : index)
    ^bb21:  // pred: ^bb1
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_39 = arith.constant 0 : index
      %27 = memref.load %in0_2_cons_buff_0[%c0_39] : memref<96xbf16>
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA03_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_40 = arith.constant 0 : index
      %c2048_41 = arith.constant 2048 : index
      %c1_42 = arith.constant 1 : index
      %c2_43 = arith.constant 2 : index
      cf.br ^bb22(%c0_40 : index)
    ^bb22(%28: index):  // 2 preds: ^bb21, ^bb23
      %29 = arith.cmpi slt, %28, %c2048_41 : index
      cf.cond_br %29, ^bb23, ^bb24
    ^bb23:  // pred: ^bb22
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_44 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_2_cons_buff_1, %of_in_mainA03_cons_buff_0, %of_in_mainA03_cons_buff_1, %of_in_mainA03_cons_buff_2, %of_in_mainA03_cons_buff_3, %of_in_mainA03_cons_buff_4, %of_out_mainA03_buff_0, %c768_i32_44) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_45 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_2_cons_buff_0, %of_in_mainA03_cons_buff_0, %of_in_mainA03_cons_buff_1, %of_in_mainA03_cons_buff_2, %of_in_mainA03_cons_buff_3, %of_in_mainA03_cons_buff_4, %of_out_mainA03_buff_1, %c768_i32_45) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%in0_2_cons_prod_lock, Release, 1)
      %30 = arith.addi %28, %c2_43 : index
      cf.br ^bb22(%30 : index)
    ^bb24:  // pred: ^bb22
      aie.use_lock(%of_in_mainA03_cons_prod_lock, Release, 5)
      aie.end
    } {link_with = "kernels.a"}
    %core_2_5 = aie.core(%tile_2_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c6 = arith.constant 6 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb20
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %2 = memref.load %in0_8_cons_buff_0[%c0_0] : memref<96xbf16>
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB23_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_1 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c1_2 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_1 : index)
    ^bb3(%3: index):  // 2 preds: ^bb2, ^bb4
      %4 = arith.cmpi slt, %3, %c2048 : index
      cf.cond_br %4, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_8_cons_buff_1, %of_in_mainB23_cons_buff_0, %of_in_mainB23_cons_buff_1, %of_in_mainB23_cons_buff_2, %of_in_mainB23_cons_buff_3, %of_in_mainB23_cons_buff_4, %of_out_mainB23_buff_0, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_3 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_8_cons_buff_0, %of_in_mainB23_cons_buff_0, %of_in_mainB23_cons_buff_1, %of_in_mainB23_cons_buff_2, %of_in_mainB23_cons_buff_3, %of_in_mainB23_cons_buff_4, %of_out_mainB23_buff_1, %c768_i32_3) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      %5 = arith.addi %3, %c2 : index
      cf.br ^bb3(%5 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainB23_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %6 = memref.load %in0_8_cons_buff_1[%c0_4] : memref<96xbf16>
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB23_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_5 = arith.constant 0 : index
      %c2048_6 = arith.constant 2048 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c2048_6 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_9 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_8_cons_buff_0, %of_in_mainB23_cons_buff_5, %of_in_mainB23_cons_buff_0, %of_in_mainB23_cons_buff_1, %of_in_mainB23_cons_buff_2, %of_in_mainB23_cons_buff_3, %of_out_mainB23_buff_0, %c768_i32_9) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_10 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_8_cons_buff_1, %of_in_mainB23_cons_buff_5, %of_in_mainB23_cons_buff_0, %of_in_mainB23_cons_buff_1, %of_in_mainB23_cons_buff_2, %of_in_mainB23_cons_buff_3, %of_out_mainB23_buff_1, %c768_i32_10) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb6(%9 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainB23_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_11 = arith.constant 0 : index
      %10 = memref.load %in0_8_cons_buff_0[%c0_11] : memref<96xbf16>
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB23_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_12 = arith.constant 0 : index
      %c2048_13 = arith.constant 2048 : index
      %c1_14 = arith.constant 1 : index
      %c2_15 = arith.constant 2 : index
      cf.br ^bb9(%c0_12 : index)
    ^bb9(%11: index):  // 2 preds: ^bb8, ^bb10
      %12 = arith.cmpi slt, %11, %c2048_13 : index
      cf.cond_br %12, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_16 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_8_cons_buff_1, %of_in_mainB23_cons_buff_4, %of_in_mainB23_cons_buff_5, %of_in_mainB23_cons_buff_0, %of_in_mainB23_cons_buff_1, %of_in_mainB23_cons_buff_2, %of_out_mainB23_buff_0, %c768_i32_16) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_17 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_8_cons_buff_0, %of_in_mainB23_cons_buff_4, %of_in_mainB23_cons_buff_5, %of_in_mainB23_cons_buff_0, %of_in_mainB23_cons_buff_1, %of_in_mainB23_cons_buff_2, %of_out_mainB23_buff_1, %c768_i32_17) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      %13 = arith.addi %11, %c2_15 : index
      cf.br ^bb9(%13 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%of_in_mainB23_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_18 = arith.constant 0 : index
      %14 = memref.load %in0_8_cons_buff_1[%c0_18] : memref<96xbf16>
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB23_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_19 = arith.constant 0 : index
      %c2048_20 = arith.constant 2048 : index
      %c1_21 = arith.constant 1 : index
      %c2_22 = arith.constant 2 : index
      cf.br ^bb12(%c0_19 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c2048_20 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_23 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_8_cons_buff_0, %of_in_mainB23_cons_buff_3, %of_in_mainB23_cons_buff_4, %of_in_mainB23_cons_buff_5, %of_in_mainB23_cons_buff_0, %of_in_mainB23_cons_buff_1, %of_out_mainB23_buff_0, %c768_i32_23) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_24 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_8_cons_buff_1, %of_in_mainB23_cons_buff_3, %of_in_mainB23_cons_buff_4, %of_in_mainB23_cons_buff_5, %of_in_mainB23_cons_buff_0, %of_in_mainB23_cons_buff_1, %of_out_mainB23_buff_1, %c768_i32_24) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      %17 = arith.addi %15, %c2_22 : index
      cf.br ^bb12(%17 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%of_in_mainB23_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_25 = arith.constant 0 : index
      %18 = memref.load %in0_8_cons_buff_0[%c0_25] : memref<96xbf16>
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB23_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_26 = arith.constant 0 : index
      %c2048_27 = arith.constant 2048 : index
      %c1_28 = arith.constant 1 : index
      %c2_29 = arith.constant 2 : index
      cf.br ^bb15(%c0_26 : index)
    ^bb15(%19: index):  // 2 preds: ^bb14, ^bb16
      %20 = arith.cmpi slt, %19, %c2048_27 : index
      cf.cond_br %20, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_30 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_8_cons_buff_1, %of_in_mainB23_cons_buff_2, %of_in_mainB23_cons_buff_3, %of_in_mainB23_cons_buff_4, %of_in_mainB23_cons_buff_5, %of_in_mainB23_cons_buff_0, %of_out_mainB23_buff_0, %c768_i32_30) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_31 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_8_cons_buff_0, %of_in_mainB23_cons_buff_2, %of_in_mainB23_cons_buff_3, %of_in_mainB23_cons_buff_4, %of_in_mainB23_cons_buff_5, %of_in_mainB23_cons_buff_0, %of_out_mainB23_buff_1, %c768_i32_31) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      %21 = arith.addi %19, %c2_29 : index
      cf.br ^bb15(%21 : index)
    ^bb17:  // pred: ^bb15
      aie.use_lock(%of_in_mainB23_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_32 = arith.constant 0 : index
      %22 = memref.load %in0_8_cons_buff_1[%c0_32] : memref<96xbf16>
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB23_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_33 = arith.constant 0 : index
      %c2048_34 = arith.constant 2048 : index
      %c1_35 = arith.constant 1 : index
      %c2_36 = arith.constant 2 : index
      cf.br ^bb18(%c0_33 : index)
    ^bb18(%23: index):  // 2 preds: ^bb17, ^bb19
      %24 = arith.cmpi slt, %23, %c2048_34 : index
      cf.cond_br %24, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_37 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_8_cons_buff_0, %of_in_mainB23_cons_buff_1, %of_in_mainB23_cons_buff_2, %of_in_mainB23_cons_buff_3, %of_in_mainB23_cons_buff_4, %of_in_mainB23_cons_buff_5, %of_out_mainB23_buff_0, %c768_i32_37) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_38 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_8_cons_buff_1, %of_in_mainB23_cons_buff_1, %of_in_mainB23_cons_buff_2, %of_in_mainB23_cons_buff_3, %of_in_mainB23_cons_buff_4, %of_in_mainB23_cons_buff_5, %of_out_mainB23_buff_1, %c768_i32_38) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      %25 = arith.addi %23, %c2_36 : index
      cf.br ^bb18(%25 : index)
    ^bb20:  // pred: ^bb18
      aie.use_lock(%of_in_mainB23_cons_prod_lock, Release, 5)
      %26 = arith.addi %0, %c6 : index
      cf.br ^bb1(%26 : index)
    ^bb21:  // pred: ^bb1
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_39 = arith.constant 0 : index
      %27 = memref.load %in0_8_cons_buff_0[%c0_39] : memref<96xbf16>
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB23_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_40 = arith.constant 0 : index
      %c2048_41 = arith.constant 2048 : index
      %c1_42 = arith.constant 1 : index
      %c2_43 = arith.constant 2 : index
      cf.br ^bb22(%c0_40 : index)
    ^bb22(%28: index):  // 2 preds: ^bb21, ^bb23
      %29 = arith.cmpi slt, %28, %c2048_41 : index
      cf.cond_br %29, ^bb23, ^bb24
    ^bb23:  // pred: ^bb22
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_44 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_8_cons_buff_1, %of_in_mainB23_cons_buff_0, %of_in_mainB23_cons_buff_1, %of_in_mainB23_cons_buff_2, %of_in_mainB23_cons_buff_3, %of_in_mainB23_cons_buff_4, %of_out_mainB23_buff_0, %c768_i32_44) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_8_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_45 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_8_cons_buff_0, %of_in_mainB23_cons_buff_0, %of_in_mainB23_cons_buff_1, %of_in_mainB23_cons_buff_2, %of_in_mainB23_cons_buff_3, %of_in_mainB23_cons_buff_4, %of_out_mainB23_buff_1, %c768_i32_45) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%in0_8_cons_prod_lock, Release, 1)
      %30 = arith.addi %28, %c2_43 : index
      cf.br ^bb22(%30 : index)
    ^bb24:  // pred: ^bb22
      aie.use_lock(%of_in_mainB23_cons_prod_lock, Release, 5)
      aie.end
    } {link_with = "kernels.a"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c6 = arith.constant 6 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb20
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %2 = memref.load %in0_3_cons_buff_0[%c0_0] : memref<96xbf16>
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA11_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_1 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c1_2 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_1 : index)
    ^bb3(%3: index):  // 2 preds: ^bb2, ^bb4
      %4 = arith.cmpi slt, %3, %c2048 : index
      cf.cond_br %4, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_3_cons_buff_1, %of_in_mainA11_cons_buff_0, %of_in_mainA11_cons_buff_1, %of_in_mainA11_cons_buff_2, %of_in_mainA11_cons_buff_3, %of_in_mainA11_cons_buff_4, %of_out_mainA11_buff_0, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_3 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_3_cons_buff_0, %of_in_mainA11_cons_buff_0, %of_in_mainA11_cons_buff_1, %of_in_mainA11_cons_buff_2, %of_in_mainA11_cons_buff_3, %of_in_mainA11_cons_buff_4, %of_out_mainA11_buff_1, %c768_i32_3) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      %5 = arith.addi %3, %c2 : index
      cf.br ^bb3(%5 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainA11_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %6 = memref.load %in0_3_cons_buff_1[%c0_4] : memref<96xbf16>
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA11_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_5 = arith.constant 0 : index
      %c2048_6 = arith.constant 2048 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c2048_6 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_9 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_3_cons_buff_0, %of_in_mainA11_cons_buff_5, %of_in_mainA11_cons_buff_0, %of_in_mainA11_cons_buff_1, %of_in_mainA11_cons_buff_2, %of_in_mainA11_cons_buff_3, %of_out_mainA11_buff_0, %c768_i32_9) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_10 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_3_cons_buff_1, %of_in_mainA11_cons_buff_5, %of_in_mainA11_cons_buff_0, %of_in_mainA11_cons_buff_1, %of_in_mainA11_cons_buff_2, %of_in_mainA11_cons_buff_3, %of_out_mainA11_buff_1, %c768_i32_10) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb6(%9 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainA11_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_11 = arith.constant 0 : index
      %10 = memref.load %in0_3_cons_buff_0[%c0_11] : memref<96xbf16>
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA11_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_12 = arith.constant 0 : index
      %c2048_13 = arith.constant 2048 : index
      %c1_14 = arith.constant 1 : index
      %c2_15 = arith.constant 2 : index
      cf.br ^bb9(%c0_12 : index)
    ^bb9(%11: index):  // 2 preds: ^bb8, ^bb10
      %12 = arith.cmpi slt, %11, %c2048_13 : index
      cf.cond_br %12, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_16 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_3_cons_buff_1, %of_in_mainA11_cons_buff_4, %of_in_mainA11_cons_buff_5, %of_in_mainA11_cons_buff_0, %of_in_mainA11_cons_buff_1, %of_in_mainA11_cons_buff_2, %of_out_mainA11_buff_0, %c768_i32_16) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_17 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_3_cons_buff_0, %of_in_mainA11_cons_buff_4, %of_in_mainA11_cons_buff_5, %of_in_mainA11_cons_buff_0, %of_in_mainA11_cons_buff_1, %of_in_mainA11_cons_buff_2, %of_out_mainA11_buff_1, %c768_i32_17) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      %13 = arith.addi %11, %c2_15 : index
      cf.br ^bb9(%13 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%of_in_mainA11_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_18 = arith.constant 0 : index
      %14 = memref.load %in0_3_cons_buff_1[%c0_18] : memref<96xbf16>
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA11_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_19 = arith.constant 0 : index
      %c2048_20 = arith.constant 2048 : index
      %c1_21 = arith.constant 1 : index
      %c2_22 = arith.constant 2 : index
      cf.br ^bb12(%c0_19 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c2048_20 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_23 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_3_cons_buff_0, %of_in_mainA11_cons_buff_3, %of_in_mainA11_cons_buff_4, %of_in_mainA11_cons_buff_5, %of_in_mainA11_cons_buff_0, %of_in_mainA11_cons_buff_1, %of_out_mainA11_buff_0, %c768_i32_23) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_24 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_3_cons_buff_1, %of_in_mainA11_cons_buff_3, %of_in_mainA11_cons_buff_4, %of_in_mainA11_cons_buff_5, %of_in_mainA11_cons_buff_0, %of_in_mainA11_cons_buff_1, %of_out_mainA11_buff_1, %c768_i32_24) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      %17 = arith.addi %15, %c2_22 : index
      cf.br ^bb12(%17 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%of_in_mainA11_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_25 = arith.constant 0 : index
      %18 = memref.load %in0_3_cons_buff_0[%c0_25] : memref<96xbf16>
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA11_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_26 = arith.constant 0 : index
      %c2048_27 = arith.constant 2048 : index
      %c1_28 = arith.constant 1 : index
      %c2_29 = arith.constant 2 : index
      cf.br ^bb15(%c0_26 : index)
    ^bb15(%19: index):  // 2 preds: ^bb14, ^bb16
      %20 = arith.cmpi slt, %19, %c2048_27 : index
      cf.cond_br %20, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_30 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_3_cons_buff_1, %of_in_mainA11_cons_buff_2, %of_in_mainA11_cons_buff_3, %of_in_mainA11_cons_buff_4, %of_in_mainA11_cons_buff_5, %of_in_mainA11_cons_buff_0, %of_out_mainA11_buff_0, %c768_i32_30) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_31 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_3_cons_buff_0, %of_in_mainA11_cons_buff_2, %of_in_mainA11_cons_buff_3, %of_in_mainA11_cons_buff_4, %of_in_mainA11_cons_buff_5, %of_in_mainA11_cons_buff_0, %of_out_mainA11_buff_1, %c768_i32_31) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      %21 = arith.addi %19, %c2_29 : index
      cf.br ^bb15(%21 : index)
    ^bb17:  // pred: ^bb15
      aie.use_lock(%of_in_mainA11_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_32 = arith.constant 0 : index
      %22 = memref.load %in0_3_cons_buff_1[%c0_32] : memref<96xbf16>
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA11_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_33 = arith.constant 0 : index
      %c2048_34 = arith.constant 2048 : index
      %c1_35 = arith.constant 1 : index
      %c2_36 = arith.constant 2 : index
      cf.br ^bb18(%c0_33 : index)
    ^bb18(%23: index):  // 2 preds: ^bb17, ^bb19
      %24 = arith.cmpi slt, %23, %c2048_34 : index
      cf.cond_br %24, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_37 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_3_cons_buff_0, %of_in_mainA11_cons_buff_1, %of_in_mainA11_cons_buff_2, %of_in_mainA11_cons_buff_3, %of_in_mainA11_cons_buff_4, %of_in_mainA11_cons_buff_5, %of_out_mainA11_buff_0, %c768_i32_37) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_38 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_3_cons_buff_1, %of_in_mainA11_cons_buff_1, %of_in_mainA11_cons_buff_2, %of_in_mainA11_cons_buff_3, %of_in_mainA11_cons_buff_4, %of_in_mainA11_cons_buff_5, %of_out_mainA11_buff_1, %c768_i32_38) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      %25 = arith.addi %23, %c2_36 : index
      cf.br ^bb18(%25 : index)
    ^bb20:  // pred: ^bb18
      aie.use_lock(%of_in_mainA11_cons_prod_lock, Release, 5)
      %26 = arith.addi %0, %c6 : index
      cf.br ^bb1(%26 : index)
    ^bb21:  // pred: ^bb1
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_39 = arith.constant 0 : index
      %27 = memref.load %in0_3_cons_buff_0[%c0_39] : memref<96xbf16>
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA11_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_40 = arith.constant 0 : index
      %c2048_41 = arith.constant 2048 : index
      %c1_42 = arith.constant 1 : index
      %c2_43 = arith.constant 2 : index
      cf.br ^bb22(%c0_40 : index)
    ^bb22(%28: index):  // 2 preds: ^bb21, ^bb23
      %29 = arith.cmpi slt, %28, %c2048_41 : index
      cf.cond_br %29, ^bb23, ^bb24
    ^bb23:  // pred: ^bb22
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_44 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_3_cons_buff_1, %of_in_mainA11_cons_buff_0, %of_in_mainA11_cons_buff_1, %of_in_mainA11_cons_buff_2, %of_in_mainA11_cons_buff_3, %of_in_mainA11_cons_buff_4, %of_out_mainA11_buff_0, %c768_i32_44) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_45 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_3_cons_buff_0, %of_in_mainA11_cons_buff_0, %of_in_mainA11_cons_buff_1, %of_in_mainA11_cons_buff_2, %of_in_mainA11_cons_buff_3, %of_in_mainA11_cons_buff_4, %of_out_mainA11_buff_1, %c768_i32_45) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%in0_3_cons_prod_lock, Release, 1)
      %30 = arith.addi %28, %c2_43 : index
      cf.br ^bb22(%30 : index)
    ^bb24:  // pred: ^bb22
      aie.use_lock(%of_in_mainA11_cons_prod_lock, Release, 5)
      aie.end
    } {link_with = "kernels.a"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c6 = arith.constant 6 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb20
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %2 = memref.load %in0_9_cons_buff_0[%c0_0] : memref<96xbf16>
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB31_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_1 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c1_2 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_1 : index)
    ^bb3(%3: index):  // 2 preds: ^bb2, ^bb4
      %4 = arith.cmpi slt, %3, %c2048 : index
      cf.cond_br %4, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_9_cons_buff_1, %of_in_mainB31_cons_buff_0, %of_in_mainB31_cons_buff_1, %of_in_mainB31_cons_buff_2, %of_in_mainB31_cons_buff_3, %of_in_mainB31_cons_buff_4, %of_out_mainB31_buff_0, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_3 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_9_cons_buff_0, %of_in_mainB31_cons_buff_0, %of_in_mainB31_cons_buff_1, %of_in_mainB31_cons_buff_2, %of_in_mainB31_cons_buff_3, %of_in_mainB31_cons_buff_4, %of_out_mainB31_buff_1, %c768_i32_3) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      %5 = arith.addi %3, %c2 : index
      cf.br ^bb3(%5 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainB31_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %6 = memref.load %in0_9_cons_buff_1[%c0_4] : memref<96xbf16>
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB31_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_5 = arith.constant 0 : index
      %c2048_6 = arith.constant 2048 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c2048_6 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_9 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_9_cons_buff_0, %of_in_mainB31_cons_buff_5, %of_in_mainB31_cons_buff_0, %of_in_mainB31_cons_buff_1, %of_in_mainB31_cons_buff_2, %of_in_mainB31_cons_buff_3, %of_out_mainB31_buff_0, %c768_i32_9) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_10 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_9_cons_buff_1, %of_in_mainB31_cons_buff_5, %of_in_mainB31_cons_buff_0, %of_in_mainB31_cons_buff_1, %of_in_mainB31_cons_buff_2, %of_in_mainB31_cons_buff_3, %of_out_mainB31_buff_1, %c768_i32_10) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb6(%9 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainB31_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_11 = arith.constant 0 : index
      %10 = memref.load %in0_9_cons_buff_0[%c0_11] : memref<96xbf16>
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB31_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_12 = arith.constant 0 : index
      %c2048_13 = arith.constant 2048 : index
      %c1_14 = arith.constant 1 : index
      %c2_15 = arith.constant 2 : index
      cf.br ^bb9(%c0_12 : index)
    ^bb9(%11: index):  // 2 preds: ^bb8, ^bb10
      %12 = arith.cmpi slt, %11, %c2048_13 : index
      cf.cond_br %12, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_16 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_9_cons_buff_1, %of_in_mainB31_cons_buff_4, %of_in_mainB31_cons_buff_5, %of_in_mainB31_cons_buff_0, %of_in_mainB31_cons_buff_1, %of_in_mainB31_cons_buff_2, %of_out_mainB31_buff_0, %c768_i32_16) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_17 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_9_cons_buff_0, %of_in_mainB31_cons_buff_4, %of_in_mainB31_cons_buff_5, %of_in_mainB31_cons_buff_0, %of_in_mainB31_cons_buff_1, %of_in_mainB31_cons_buff_2, %of_out_mainB31_buff_1, %c768_i32_17) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      %13 = arith.addi %11, %c2_15 : index
      cf.br ^bb9(%13 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%of_in_mainB31_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_18 = arith.constant 0 : index
      %14 = memref.load %in0_9_cons_buff_1[%c0_18] : memref<96xbf16>
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB31_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_19 = arith.constant 0 : index
      %c2048_20 = arith.constant 2048 : index
      %c1_21 = arith.constant 1 : index
      %c2_22 = arith.constant 2 : index
      cf.br ^bb12(%c0_19 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c2048_20 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_23 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_9_cons_buff_0, %of_in_mainB31_cons_buff_3, %of_in_mainB31_cons_buff_4, %of_in_mainB31_cons_buff_5, %of_in_mainB31_cons_buff_0, %of_in_mainB31_cons_buff_1, %of_out_mainB31_buff_0, %c768_i32_23) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_24 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_9_cons_buff_1, %of_in_mainB31_cons_buff_3, %of_in_mainB31_cons_buff_4, %of_in_mainB31_cons_buff_5, %of_in_mainB31_cons_buff_0, %of_in_mainB31_cons_buff_1, %of_out_mainB31_buff_1, %c768_i32_24) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      %17 = arith.addi %15, %c2_22 : index
      cf.br ^bb12(%17 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%of_in_mainB31_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_25 = arith.constant 0 : index
      %18 = memref.load %in0_9_cons_buff_0[%c0_25] : memref<96xbf16>
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB31_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_26 = arith.constant 0 : index
      %c2048_27 = arith.constant 2048 : index
      %c1_28 = arith.constant 1 : index
      %c2_29 = arith.constant 2 : index
      cf.br ^bb15(%c0_26 : index)
    ^bb15(%19: index):  // 2 preds: ^bb14, ^bb16
      %20 = arith.cmpi slt, %19, %c2048_27 : index
      cf.cond_br %20, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_30 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_9_cons_buff_1, %of_in_mainB31_cons_buff_2, %of_in_mainB31_cons_buff_3, %of_in_mainB31_cons_buff_4, %of_in_mainB31_cons_buff_5, %of_in_mainB31_cons_buff_0, %of_out_mainB31_buff_0, %c768_i32_30) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_31 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_9_cons_buff_0, %of_in_mainB31_cons_buff_2, %of_in_mainB31_cons_buff_3, %of_in_mainB31_cons_buff_4, %of_in_mainB31_cons_buff_5, %of_in_mainB31_cons_buff_0, %of_out_mainB31_buff_1, %c768_i32_31) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      %21 = arith.addi %19, %c2_29 : index
      cf.br ^bb15(%21 : index)
    ^bb17:  // pred: ^bb15
      aie.use_lock(%of_in_mainB31_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_32 = arith.constant 0 : index
      %22 = memref.load %in0_9_cons_buff_1[%c0_32] : memref<96xbf16>
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB31_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_33 = arith.constant 0 : index
      %c2048_34 = arith.constant 2048 : index
      %c1_35 = arith.constant 1 : index
      %c2_36 = arith.constant 2 : index
      cf.br ^bb18(%c0_33 : index)
    ^bb18(%23: index):  // 2 preds: ^bb17, ^bb19
      %24 = arith.cmpi slt, %23, %c2048_34 : index
      cf.cond_br %24, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_37 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_9_cons_buff_0, %of_in_mainB31_cons_buff_1, %of_in_mainB31_cons_buff_2, %of_in_mainB31_cons_buff_3, %of_in_mainB31_cons_buff_4, %of_in_mainB31_cons_buff_5, %of_out_mainB31_buff_0, %c768_i32_37) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_38 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_9_cons_buff_1, %of_in_mainB31_cons_buff_1, %of_in_mainB31_cons_buff_2, %of_in_mainB31_cons_buff_3, %of_in_mainB31_cons_buff_4, %of_in_mainB31_cons_buff_5, %of_out_mainB31_buff_1, %c768_i32_38) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      %25 = arith.addi %23, %c2_36 : index
      cf.br ^bb18(%25 : index)
    ^bb20:  // pred: ^bb18
      aie.use_lock(%of_in_mainB31_cons_prod_lock, Release, 5)
      %26 = arith.addi %0, %c6 : index
      cf.br ^bb1(%26 : index)
    ^bb21:  // pred: ^bb1
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_39 = arith.constant 0 : index
      %27 = memref.load %in0_9_cons_buff_0[%c0_39] : memref<96xbf16>
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB31_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_40 = arith.constant 0 : index
      %c2048_41 = arith.constant 2048 : index
      %c1_42 = arith.constant 1 : index
      %c2_43 = arith.constant 2 : index
      cf.br ^bb22(%c0_40 : index)
    ^bb22(%28: index):  // 2 preds: ^bb21, ^bb23
      %29 = arith.cmpi slt, %28, %c2048_41 : index
      cf.cond_br %29, ^bb23, ^bb24
    ^bb23:  // pred: ^bb22
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_44 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_9_cons_buff_1, %of_in_mainB31_cons_buff_0, %of_in_mainB31_cons_buff_1, %of_in_mainB31_cons_buff_2, %of_in_mainB31_cons_buff_3, %of_in_mainB31_cons_buff_4, %of_out_mainB31_buff_0, %c768_i32_44) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_9_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_45 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_9_cons_buff_0, %of_in_mainB31_cons_buff_0, %of_in_mainB31_cons_buff_1, %of_in_mainB31_cons_buff_2, %of_in_mainB31_cons_buff_3, %of_in_mainB31_cons_buff_4, %of_out_mainB31_buff_1, %c768_i32_45) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%in0_9_cons_prod_lock, Release, 1)
      %30 = arith.addi %28, %c2_43 : index
      cf.br ^bb22(%30 : index)
    ^bb24:  // pred: ^bb22
      aie.use_lock(%of_in_mainB31_cons_prod_lock, Release, 5)
      aie.end
    } {link_with = "kernels.a"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c6 = arith.constant 6 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb20
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %2 = memref.load %in0_4_cons_buff_0[%c0_0] : memref<96xbf16>
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA12_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_1 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c1_2 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_1 : index)
    ^bb3(%3: index):  // 2 preds: ^bb2, ^bb4
      %4 = arith.cmpi slt, %3, %c2048 : index
      cf.cond_br %4, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_4_cons_buff_1, %of_in_mainA12_cons_buff_0, %of_in_mainA12_cons_buff_1, %of_in_mainA12_cons_buff_2, %of_in_mainA12_cons_buff_3, %of_in_mainA12_cons_buff_4, %of_out_mainA12_buff_0, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_3 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_4_cons_buff_0, %of_in_mainA12_cons_buff_0, %of_in_mainA12_cons_buff_1, %of_in_mainA12_cons_buff_2, %of_in_mainA12_cons_buff_3, %of_in_mainA12_cons_buff_4, %of_out_mainA12_buff_1, %c768_i32_3) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      %5 = arith.addi %3, %c2 : index
      cf.br ^bb3(%5 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainA12_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %6 = memref.load %in0_4_cons_buff_1[%c0_4] : memref<96xbf16>
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA12_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_5 = arith.constant 0 : index
      %c2048_6 = arith.constant 2048 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c2048_6 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_9 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_4_cons_buff_0, %of_in_mainA12_cons_buff_5, %of_in_mainA12_cons_buff_0, %of_in_mainA12_cons_buff_1, %of_in_mainA12_cons_buff_2, %of_in_mainA12_cons_buff_3, %of_out_mainA12_buff_0, %c768_i32_9) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_10 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_4_cons_buff_1, %of_in_mainA12_cons_buff_5, %of_in_mainA12_cons_buff_0, %of_in_mainA12_cons_buff_1, %of_in_mainA12_cons_buff_2, %of_in_mainA12_cons_buff_3, %of_out_mainA12_buff_1, %c768_i32_10) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb6(%9 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainA12_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_11 = arith.constant 0 : index
      %10 = memref.load %in0_4_cons_buff_0[%c0_11] : memref<96xbf16>
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA12_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_12 = arith.constant 0 : index
      %c2048_13 = arith.constant 2048 : index
      %c1_14 = arith.constant 1 : index
      %c2_15 = arith.constant 2 : index
      cf.br ^bb9(%c0_12 : index)
    ^bb9(%11: index):  // 2 preds: ^bb8, ^bb10
      %12 = arith.cmpi slt, %11, %c2048_13 : index
      cf.cond_br %12, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_16 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_4_cons_buff_1, %of_in_mainA12_cons_buff_4, %of_in_mainA12_cons_buff_5, %of_in_mainA12_cons_buff_0, %of_in_mainA12_cons_buff_1, %of_in_mainA12_cons_buff_2, %of_out_mainA12_buff_0, %c768_i32_16) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_17 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_4_cons_buff_0, %of_in_mainA12_cons_buff_4, %of_in_mainA12_cons_buff_5, %of_in_mainA12_cons_buff_0, %of_in_mainA12_cons_buff_1, %of_in_mainA12_cons_buff_2, %of_out_mainA12_buff_1, %c768_i32_17) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      %13 = arith.addi %11, %c2_15 : index
      cf.br ^bb9(%13 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%of_in_mainA12_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_18 = arith.constant 0 : index
      %14 = memref.load %in0_4_cons_buff_1[%c0_18] : memref<96xbf16>
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA12_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_19 = arith.constant 0 : index
      %c2048_20 = arith.constant 2048 : index
      %c1_21 = arith.constant 1 : index
      %c2_22 = arith.constant 2 : index
      cf.br ^bb12(%c0_19 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c2048_20 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_23 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_4_cons_buff_0, %of_in_mainA12_cons_buff_3, %of_in_mainA12_cons_buff_4, %of_in_mainA12_cons_buff_5, %of_in_mainA12_cons_buff_0, %of_in_mainA12_cons_buff_1, %of_out_mainA12_buff_0, %c768_i32_23) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_24 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_4_cons_buff_1, %of_in_mainA12_cons_buff_3, %of_in_mainA12_cons_buff_4, %of_in_mainA12_cons_buff_5, %of_in_mainA12_cons_buff_0, %of_in_mainA12_cons_buff_1, %of_out_mainA12_buff_1, %c768_i32_24) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      %17 = arith.addi %15, %c2_22 : index
      cf.br ^bb12(%17 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%of_in_mainA12_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_25 = arith.constant 0 : index
      %18 = memref.load %in0_4_cons_buff_0[%c0_25] : memref<96xbf16>
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA12_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_26 = arith.constant 0 : index
      %c2048_27 = arith.constant 2048 : index
      %c1_28 = arith.constant 1 : index
      %c2_29 = arith.constant 2 : index
      cf.br ^bb15(%c0_26 : index)
    ^bb15(%19: index):  // 2 preds: ^bb14, ^bb16
      %20 = arith.cmpi slt, %19, %c2048_27 : index
      cf.cond_br %20, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_30 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_4_cons_buff_1, %of_in_mainA12_cons_buff_2, %of_in_mainA12_cons_buff_3, %of_in_mainA12_cons_buff_4, %of_in_mainA12_cons_buff_5, %of_in_mainA12_cons_buff_0, %of_out_mainA12_buff_0, %c768_i32_30) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_31 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_4_cons_buff_0, %of_in_mainA12_cons_buff_2, %of_in_mainA12_cons_buff_3, %of_in_mainA12_cons_buff_4, %of_in_mainA12_cons_buff_5, %of_in_mainA12_cons_buff_0, %of_out_mainA12_buff_1, %c768_i32_31) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      %21 = arith.addi %19, %c2_29 : index
      cf.br ^bb15(%21 : index)
    ^bb17:  // pred: ^bb15
      aie.use_lock(%of_in_mainA12_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_32 = arith.constant 0 : index
      %22 = memref.load %in0_4_cons_buff_1[%c0_32] : memref<96xbf16>
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA12_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_33 = arith.constant 0 : index
      %c2048_34 = arith.constant 2048 : index
      %c1_35 = arith.constant 1 : index
      %c2_36 = arith.constant 2 : index
      cf.br ^bb18(%c0_33 : index)
    ^bb18(%23: index):  // 2 preds: ^bb17, ^bb19
      %24 = arith.cmpi slt, %23, %c2048_34 : index
      cf.cond_br %24, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_37 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_4_cons_buff_0, %of_in_mainA12_cons_buff_1, %of_in_mainA12_cons_buff_2, %of_in_mainA12_cons_buff_3, %of_in_mainA12_cons_buff_4, %of_in_mainA12_cons_buff_5, %of_out_mainA12_buff_0, %c768_i32_37) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_38 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_4_cons_buff_1, %of_in_mainA12_cons_buff_1, %of_in_mainA12_cons_buff_2, %of_in_mainA12_cons_buff_3, %of_in_mainA12_cons_buff_4, %of_in_mainA12_cons_buff_5, %of_out_mainA12_buff_1, %c768_i32_38) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      %25 = arith.addi %23, %c2_36 : index
      cf.br ^bb18(%25 : index)
    ^bb20:  // pred: ^bb18
      aie.use_lock(%of_in_mainA12_cons_prod_lock, Release, 5)
      %26 = arith.addi %0, %c6 : index
      cf.br ^bb1(%26 : index)
    ^bb21:  // pred: ^bb1
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_39 = arith.constant 0 : index
      %27 = memref.load %in0_4_cons_buff_0[%c0_39] : memref<96xbf16>
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA12_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_40 = arith.constant 0 : index
      %c2048_41 = arith.constant 2048 : index
      %c1_42 = arith.constant 1 : index
      %c2_43 = arith.constant 2 : index
      cf.br ^bb22(%c0_40 : index)
    ^bb22(%28: index):  // 2 preds: ^bb21, ^bb23
      %29 = arith.cmpi slt, %28, %c2048_41 : index
      cf.cond_br %29, ^bb23, ^bb24
    ^bb23:  // pred: ^bb22
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_44 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_4_cons_buff_1, %of_in_mainA12_cons_buff_0, %of_in_mainA12_cons_buff_1, %of_in_mainA12_cons_buff_2, %of_in_mainA12_cons_buff_3, %of_in_mainA12_cons_buff_4, %of_out_mainA12_buff_0, %c768_i32_44) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_4_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_45 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_4_cons_buff_0, %of_in_mainA12_cons_buff_0, %of_in_mainA12_cons_buff_1, %of_in_mainA12_cons_buff_2, %of_in_mainA12_cons_buff_3, %of_in_mainA12_cons_buff_4, %of_out_mainA12_buff_1, %c768_i32_45) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%in0_4_cons_prod_lock, Release, 1)
      %30 = arith.addi %28, %c2_43 : index
      cf.br ^bb22(%30 : index)
    ^bb24:  // pred: ^bb22
      aie.use_lock(%of_in_mainA12_cons_prod_lock, Release, 5)
      aie.end
    } {link_with = "kernels.a"}
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c6 = arith.constant 6 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb20
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %2 = memref.load %in0_10_cons_buff_0[%c0_0] : memref<96xbf16>
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB32_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_1 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c1_2 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_1 : index)
    ^bb3(%3: index):  // 2 preds: ^bb2, ^bb4
      %4 = arith.cmpi slt, %3, %c2048 : index
      cf.cond_br %4, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_10_cons_buff_1, %of_in_mainB32_cons_buff_0, %of_in_mainB32_cons_buff_1, %of_in_mainB32_cons_buff_2, %of_in_mainB32_cons_buff_3, %of_in_mainB32_cons_buff_4, %of_out_mainB32_buff_0, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_3 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_10_cons_buff_0, %of_in_mainB32_cons_buff_0, %of_in_mainB32_cons_buff_1, %of_in_mainB32_cons_buff_2, %of_in_mainB32_cons_buff_3, %of_in_mainB32_cons_buff_4, %of_out_mainB32_buff_1, %c768_i32_3) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      %5 = arith.addi %3, %c2 : index
      cf.br ^bb3(%5 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainB32_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %6 = memref.load %in0_10_cons_buff_1[%c0_4] : memref<96xbf16>
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB32_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_5 = arith.constant 0 : index
      %c2048_6 = arith.constant 2048 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c2048_6 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_9 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_10_cons_buff_0, %of_in_mainB32_cons_buff_5, %of_in_mainB32_cons_buff_0, %of_in_mainB32_cons_buff_1, %of_in_mainB32_cons_buff_2, %of_in_mainB32_cons_buff_3, %of_out_mainB32_buff_0, %c768_i32_9) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_10 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_10_cons_buff_1, %of_in_mainB32_cons_buff_5, %of_in_mainB32_cons_buff_0, %of_in_mainB32_cons_buff_1, %of_in_mainB32_cons_buff_2, %of_in_mainB32_cons_buff_3, %of_out_mainB32_buff_1, %c768_i32_10) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb6(%9 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainB32_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_11 = arith.constant 0 : index
      %10 = memref.load %in0_10_cons_buff_0[%c0_11] : memref<96xbf16>
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB32_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_12 = arith.constant 0 : index
      %c2048_13 = arith.constant 2048 : index
      %c1_14 = arith.constant 1 : index
      %c2_15 = arith.constant 2 : index
      cf.br ^bb9(%c0_12 : index)
    ^bb9(%11: index):  // 2 preds: ^bb8, ^bb10
      %12 = arith.cmpi slt, %11, %c2048_13 : index
      cf.cond_br %12, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_16 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_10_cons_buff_1, %of_in_mainB32_cons_buff_4, %of_in_mainB32_cons_buff_5, %of_in_mainB32_cons_buff_0, %of_in_mainB32_cons_buff_1, %of_in_mainB32_cons_buff_2, %of_out_mainB32_buff_0, %c768_i32_16) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_17 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_10_cons_buff_0, %of_in_mainB32_cons_buff_4, %of_in_mainB32_cons_buff_5, %of_in_mainB32_cons_buff_0, %of_in_mainB32_cons_buff_1, %of_in_mainB32_cons_buff_2, %of_out_mainB32_buff_1, %c768_i32_17) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      %13 = arith.addi %11, %c2_15 : index
      cf.br ^bb9(%13 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%of_in_mainB32_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_18 = arith.constant 0 : index
      %14 = memref.load %in0_10_cons_buff_1[%c0_18] : memref<96xbf16>
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB32_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_19 = arith.constant 0 : index
      %c2048_20 = arith.constant 2048 : index
      %c1_21 = arith.constant 1 : index
      %c2_22 = arith.constant 2 : index
      cf.br ^bb12(%c0_19 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c2048_20 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_23 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_10_cons_buff_0, %of_in_mainB32_cons_buff_3, %of_in_mainB32_cons_buff_4, %of_in_mainB32_cons_buff_5, %of_in_mainB32_cons_buff_0, %of_in_mainB32_cons_buff_1, %of_out_mainB32_buff_0, %c768_i32_23) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_24 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_10_cons_buff_1, %of_in_mainB32_cons_buff_3, %of_in_mainB32_cons_buff_4, %of_in_mainB32_cons_buff_5, %of_in_mainB32_cons_buff_0, %of_in_mainB32_cons_buff_1, %of_out_mainB32_buff_1, %c768_i32_24) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      %17 = arith.addi %15, %c2_22 : index
      cf.br ^bb12(%17 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%of_in_mainB32_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_25 = arith.constant 0 : index
      %18 = memref.load %in0_10_cons_buff_0[%c0_25] : memref<96xbf16>
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB32_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_26 = arith.constant 0 : index
      %c2048_27 = arith.constant 2048 : index
      %c1_28 = arith.constant 1 : index
      %c2_29 = arith.constant 2 : index
      cf.br ^bb15(%c0_26 : index)
    ^bb15(%19: index):  // 2 preds: ^bb14, ^bb16
      %20 = arith.cmpi slt, %19, %c2048_27 : index
      cf.cond_br %20, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_30 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_10_cons_buff_1, %of_in_mainB32_cons_buff_2, %of_in_mainB32_cons_buff_3, %of_in_mainB32_cons_buff_4, %of_in_mainB32_cons_buff_5, %of_in_mainB32_cons_buff_0, %of_out_mainB32_buff_0, %c768_i32_30) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_31 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_10_cons_buff_0, %of_in_mainB32_cons_buff_2, %of_in_mainB32_cons_buff_3, %of_in_mainB32_cons_buff_4, %of_in_mainB32_cons_buff_5, %of_in_mainB32_cons_buff_0, %of_out_mainB32_buff_1, %c768_i32_31) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      %21 = arith.addi %19, %c2_29 : index
      cf.br ^bb15(%21 : index)
    ^bb17:  // pred: ^bb15
      aie.use_lock(%of_in_mainB32_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_32 = arith.constant 0 : index
      %22 = memref.load %in0_10_cons_buff_1[%c0_32] : memref<96xbf16>
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB32_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_33 = arith.constant 0 : index
      %c2048_34 = arith.constant 2048 : index
      %c1_35 = arith.constant 1 : index
      %c2_36 = arith.constant 2 : index
      cf.br ^bb18(%c0_33 : index)
    ^bb18(%23: index):  // 2 preds: ^bb17, ^bb19
      %24 = arith.cmpi slt, %23, %c2048_34 : index
      cf.cond_br %24, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_37 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_10_cons_buff_0, %of_in_mainB32_cons_buff_1, %of_in_mainB32_cons_buff_2, %of_in_mainB32_cons_buff_3, %of_in_mainB32_cons_buff_4, %of_in_mainB32_cons_buff_5, %of_out_mainB32_buff_0, %c768_i32_37) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_38 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_10_cons_buff_1, %of_in_mainB32_cons_buff_1, %of_in_mainB32_cons_buff_2, %of_in_mainB32_cons_buff_3, %of_in_mainB32_cons_buff_4, %of_in_mainB32_cons_buff_5, %of_out_mainB32_buff_1, %c768_i32_38) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      %25 = arith.addi %23, %c2_36 : index
      cf.br ^bb18(%25 : index)
    ^bb20:  // pred: ^bb18
      aie.use_lock(%of_in_mainB32_cons_prod_lock, Release, 5)
      %26 = arith.addi %0, %c6 : index
      cf.br ^bb1(%26 : index)
    ^bb21:  // pred: ^bb1
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_39 = arith.constant 0 : index
      %27 = memref.load %in0_10_cons_buff_0[%c0_39] : memref<96xbf16>
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB32_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_40 = arith.constant 0 : index
      %c2048_41 = arith.constant 2048 : index
      %c1_42 = arith.constant 1 : index
      %c2_43 = arith.constant 2 : index
      cf.br ^bb22(%c0_40 : index)
    ^bb22(%28: index):  // 2 preds: ^bb21, ^bb23
      %29 = arith.cmpi slt, %28, %c2048_41 : index
      cf.cond_br %29, ^bb23, ^bb24
    ^bb23:  // pred: ^bb22
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_44 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_10_cons_buff_1, %of_in_mainB32_cons_buff_0, %of_in_mainB32_cons_buff_1, %of_in_mainB32_cons_buff_2, %of_in_mainB32_cons_buff_3, %of_in_mainB32_cons_buff_4, %of_out_mainB32_buff_0, %c768_i32_44) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_10_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_45 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_10_cons_buff_0, %of_in_mainB32_cons_buff_0, %of_in_mainB32_cons_buff_1, %of_in_mainB32_cons_buff_2, %of_in_mainB32_cons_buff_3, %of_in_mainB32_cons_buff_4, %of_out_mainB32_buff_1, %c768_i32_45) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%in0_10_cons_prod_lock, Release, 1)
      %30 = arith.addi %28, %c2_43 : index
      cf.br ^bb22(%30 : index)
    ^bb24:  // pred: ^bb22
      aie.use_lock(%of_in_mainB32_cons_prod_lock, Release, 5)
      aie.end
    } {link_with = "kernels.a"}
    %core_1_5 = aie.core(%tile_1_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c6 = arith.constant 6 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb20
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %2 = memref.load %in0_5_cons_buff_0[%c0_0] : memref<96xbf16>
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA13_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_1 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c1_2 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_1 : index)
    ^bb3(%3: index):  // 2 preds: ^bb2, ^bb4
      %4 = arith.cmpi slt, %3, %c2048 : index
      cf.cond_br %4, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_5_cons_buff_1, %of_in_mainA13_cons_buff_0, %of_in_mainA13_cons_buff_1, %of_in_mainA13_cons_buff_2, %of_in_mainA13_cons_buff_3, %of_in_mainA13_cons_buff_4, %of_out_mainA13_buff_0, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_3 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_5_cons_buff_0, %of_in_mainA13_cons_buff_0, %of_in_mainA13_cons_buff_1, %of_in_mainA13_cons_buff_2, %of_in_mainA13_cons_buff_3, %of_in_mainA13_cons_buff_4, %of_out_mainA13_buff_1, %c768_i32_3) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      %5 = arith.addi %3, %c2 : index
      cf.br ^bb3(%5 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainA13_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %6 = memref.load %in0_5_cons_buff_1[%c0_4] : memref<96xbf16>
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA13_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_5 = arith.constant 0 : index
      %c2048_6 = arith.constant 2048 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c2048_6 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_9 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_5_cons_buff_0, %of_in_mainA13_cons_buff_5, %of_in_mainA13_cons_buff_0, %of_in_mainA13_cons_buff_1, %of_in_mainA13_cons_buff_2, %of_in_mainA13_cons_buff_3, %of_out_mainA13_buff_0, %c768_i32_9) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_10 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_5_cons_buff_1, %of_in_mainA13_cons_buff_5, %of_in_mainA13_cons_buff_0, %of_in_mainA13_cons_buff_1, %of_in_mainA13_cons_buff_2, %of_in_mainA13_cons_buff_3, %of_out_mainA13_buff_1, %c768_i32_10) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb6(%9 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainA13_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_11 = arith.constant 0 : index
      %10 = memref.load %in0_5_cons_buff_0[%c0_11] : memref<96xbf16>
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA13_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_12 = arith.constant 0 : index
      %c2048_13 = arith.constant 2048 : index
      %c1_14 = arith.constant 1 : index
      %c2_15 = arith.constant 2 : index
      cf.br ^bb9(%c0_12 : index)
    ^bb9(%11: index):  // 2 preds: ^bb8, ^bb10
      %12 = arith.cmpi slt, %11, %c2048_13 : index
      cf.cond_br %12, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_16 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_5_cons_buff_1, %of_in_mainA13_cons_buff_4, %of_in_mainA13_cons_buff_5, %of_in_mainA13_cons_buff_0, %of_in_mainA13_cons_buff_1, %of_in_mainA13_cons_buff_2, %of_out_mainA13_buff_0, %c768_i32_16) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_17 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_5_cons_buff_0, %of_in_mainA13_cons_buff_4, %of_in_mainA13_cons_buff_5, %of_in_mainA13_cons_buff_0, %of_in_mainA13_cons_buff_1, %of_in_mainA13_cons_buff_2, %of_out_mainA13_buff_1, %c768_i32_17) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      %13 = arith.addi %11, %c2_15 : index
      cf.br ^bb9(%13 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%of_in_mainA13_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_18 = arith.constant 0 : index
      %14 = memref.load %in0_5_cons_buff_1[%c0_18] : memref<96xbf16>
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA13_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_19 = arith.constant 0 : index
      %c2048_20 = arith.constant 2048 : index
      %c1_21 = arith.constant 1 : index
      %c2_22 = arith.constant 2 : index
      cf.br ^bb12(%c0_19 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c2048_20 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_23 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_5_cons_buff_0, %of_in_mainA13_cons_buff_3, %of_in_mainA13_cons_buff_4, %of_in_mainA13_cons_buff_5, %of_in_mainA13_cons_buff_0, %of_in_mainA13_cons_buff_1, %of_out_mainA13_buff_0, %c768_i32_23) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_24 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_5_cons_buff_1, %of_in_mainA13_cons_buff_3, %of_in_mainA13_cons_buff_4, %of_in_mainA13_cons_buff_5, %of_in_mainA13_cons_buff_0, %of_in_mainA13_cons_buff_1, %of_out_mainA13_buff_1, %c768_i32_24) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      %17 = arith.addi %15, %c2_22 : index
      cf.br ^bb12(%17 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%of_in_mainA13_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_25 = arith.constant 0 : index
      %18 = memref.load %in0_5_cons_buff_0[%c0_25] : memref<96xbf16>
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA13_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_26 = arith.constant 0 : index
      %c2048_27 = arith.constant 2048 : index
      %c1_28 = arith.constant 1 : index
      %c2_29 = arith.constant 2 : index
      cf.br ^bb15(%c0_26 : index)
    ^bb15(%19: index):  // 2 preds: ^bb14, ^bb16
      %20 = arith.cmpi slt, %19, %c2048_27 : index
      cf.cond_br %20, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_30 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_5_cons_buff_1, %of_in_mainA13_cons_buff_2, %of_in_mainA13_cons_buff_3, %of_in_mainA13_cons_buff_4, %of_in_mainA13_cons_buff_5, %of_in_mainA13_cons_buff_0, %of_out_mainA13_buff_0, %c768_i32_30) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_31 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_5_cons_buff_0, %of_in_mainA13_cons_buff_2, %of_in_mainA13_cons_buff_3, %of_in_mainA13_cons_buff_4, %of_in_mainA13_cons_buff_5, %of_in_mainA13_cons_buff_0, %of_out_mainA13_buff_1, %c768_i32_31) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      %21 = arith.addi %19, %c2_29 : index
      cf.br ^bb15(%21 : index)
    ^bb17:  // pred: ^bb15
      aie.use_lock(%of_in_mainA13_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_32 = arith.constant 0 : index
      %22 = memref.load %in0_5_cons_buff_1[%c0_32] : memref<96xbf16>
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA13_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_33 = arith.constant 0 : index
      %c2048_34 = arith.constant 2048 : index
      %c1_35 = arith.constant 1 : index
      %c2_36 = arith.constant 2 : index
      cf.br ^bb18(%c0_33 : index)
    ^bb18(%23: index):  // 2 preds: ^bb17, ^bb19
      %24 = arith.cmpi slt, %23, %c2048_34 : index
      cf.cond_br %24, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_37 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_5_cons_buff_0, %of_in_mainA13_cons_buff_1, %of_in_mainA13_cons_buff_2, %of_in_mainA13_cons_buff_3, %of_in_mainA13_cons_buff_4, %of_in_mainA13_cons_buff_5, %of_out_mainA13_buff_0, %c768_i32_37) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_38 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_5_cons_buff_1, %of_in_mainA13_cons_buff_1, %of_in_mainA13_cons_buff_2, %of_in_mainA13_cons_buff_3, %of_in_mainA13_cons_buff_4, %of_in_mainA13_cons_buff_5, %of_out_mainA13_buff_1, %c768_i32_38) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      %25 = arith.addi %23, %c2_36 : index
      cf.br ^bb18(%25 : index)
    ^bb20:  // pred: ^bb18
      aie.use_lock(%of_in_mainA13_cons_prod_lock, Release, 5)
      %26 = arith.addi %0, %c6 : index
      cf.br ^bb1(%26 : index)
    ^bb21:  // pred: ^bb1
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_39 = arith.constant 0 : index
      %27 = memref.load %in0_5_cons_buff_0[%c0_39] : memref<96xbf16>
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA13_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_40 = arith.constant 0 : index
      %c2048_41 = arith.constant 2048 : index
      %c1_42 = arith.constant 1 : index
      %c2_43 = arith.constant 2 : index
      cf.br ^bb22(%c0_40 : index)
    ^bb22(%28: index):  // 2 preds: ^bb21, ^bb23
      %29 = arith.cmpi slt, %28, %c2048_41 : index
      cf.cond_br %29, ^bb23, ^bb24
    ^bb23:  // pred: ^bb22
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_44 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_5_cons_buff_1, %of_in_mainA13_cons_buff_0, %of_in_mainA13_cons_buff_1, %of_in_mainA13_cons_buff_2, %of_in_mainA13_cons_buff_3, %of_in_mainA13_cons_buff_4, %of_out_mainA13_buff_0, %c768_i32_44) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_5_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_45 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_5_cons_buff_0, %of_in_mainA13_cons_buff_0, %of_in_mainA13_cons_buff_1, %of_in_mainA13_cons_buff_2, %of_in_mainA13_cons_buff_3, %of_in_mainA13_cons_buff_4, %of_out_mainA13_buff_1, %c768_i32_45) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%in0_5_cons_prod_lock, Release, 1)
      %30 = arith.addi %28, %c2_43 : index
      cf.br ^bb22(%30 : index)
    ^bb24:  // pred: ^bb22
      aie.use_lock(%of_in_mainA13_cons_prod_lock, Release, 5)
      aie.end
    } {link_with = "kernels.a"}
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c6 = arith.constant 6 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb20
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb21
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %2 = memref.load %in0_11_cons_buff_0[%c0_0] : memref<96xbf16>
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB33_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_1 = arith.constant 0 : index
      %c2048 = arith.constant 2048 : index
      %c1_2 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_1 : index)
    ^bb3(%3: index):  // 2 preds: ^bb2, ^bb4
      %4 = arith.cmpi slt, %3, %c2048 : index
      cf.cond_br %4, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_11_cons_buff_1, %of_in_mainB33_cons_buff_0, %of_in_mainB33_cons_buff_1, %of_in_mainB33_cons_buff_2, %of_in_mainB33_cons_buff_3, %of_in_mainB33_cons_buff_4, %of_out_mainB33_buff_0, %c768_i32) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_3 = arith.constant 768 : i32
      func.call @main_kernel(%2, %in0_11_cons_buff_0, %of_in_mainB33_cons_buff_0, %of_in_mainB33_cons_buff_1, %of_in_mainB33_cons_buff_2, %of_in_mainB33_cons_buff_3, %of_in_mainB33_cons_buff_4, %of_out_mainB33_buff_1, %c768_i32_3) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      %5 = arith.addi %3, %c2 : index
      cf.br ^bb3(%5 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%of_in_mainB33_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_4 = arith.constant 0 : index
      %6 = memref.load %in0_11_cons_buff_1[%c0_4] : memref<96xbf16>
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB33_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_5 = arith.constant 0 : index
      %c2048_6 = arith.constant 2048 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb6(%c0_5 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c2048_6 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_9 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_11_cons_buff_0, %of_in_mainB33_cons_buff_5, %of_in_mainB33_cons_buff_0, %of_in_mainB33_cons_buff_1, %of_in_mainB33_cons_buff_2, %of_in_mainB33_cons_buff_3, %of_out_mainB33_buff_0, %c768_i32_9) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_10 = arith.constant 768 : i32
      func.call @main_kernel(%6, %in0_11_cons_buff_1, %of_in_mainB33_cons_buff_5, %of_in_mainB33_cons_buff_0, %of_in_mainB33_cons_buff_1, %of_in_mainB33_cons_buff_2, %of_in_mainB33_cons_buff_3, %of_out_mainB33_buff_1, %c768_i32_10) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      %9 = arith.addi %7, %c2_8 : index
      cf.br ^bb6(%9 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%of_in_mainB33_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_11 = arith.constant 0 : index
      %10 = memref.load %in0_11_cons_buff_0[%c0_11] : memref<96xbf16>
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB33_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_12 = arith.constant 0 : index
      %c2048_13 = arith.constant 2048 : index
      %c1_14 = arith.constant 1 : index
      %c2_15 = arith.constant 2 : index
      cf.br ^bb9(%c0_12 : index)
    ^bb9(%11: index):  // 2 preds: ^bb8, ^bb10
      %12 = arith.cmpi slt, %11, %c2048_13 : index
      cf.cond_br %12, ^bb10, ^bb11
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_16 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_11_cons_buff_1, %of_in_mainB33_cons_buff_4, %of_in_mainB33_cons_buff_5, %of_in_mainB33_cons_buff_0, %of_in_mainB33_cons_buff_1, %of_in_mainB33_cons_buff_2, %of_out_mainB33_buff_0, %c768_i32_16) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_17 = arith.constant 768 : i32
      func.call @main_kernel(%10, %in0_11_cons_buff_0, %of_in_mainB33_cons_buff_4, %of_in_mainB33_cons_buff_5, %of_in_mainB33_cons_buff_0, %of_in_mainB33_cons_buff_1, %of_in_mainB33_cons_buff_2, %of_out_mainB33_buff_1, %c768_i32_17) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      %13 = arith.addi %11, %c2_15 : index
      cf.br ^bb9(%13 : index)
    ^bb11:  // pred: ^bb9
      aie.use_lock(%of_in_mainB33_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_18 = arith.constant 0 : index
      %14 = memref.load %in0_11_cons_buff_1[%c0_18] : memref<96xbf16>
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB33_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_19 = arith.constant 0 : index
      %c2048_20 = arith.constant 2048 : index
      %c1_21 = arith.constant 1 : index
      %c2_22 = arith.constant 2 : index
      cf.br ^bb12(%c0_19 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c2048_20 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_23 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_11_cons_buff_0, %of_in_mainB33_cons_buff_3, %of_in_mainB33_cons_buff_4, %of_in_mainB33_cons_buff_5, %of_in_mainB33_cons_buff_0, %of_in_mainB33_cons_buff_1, %of_out_mainB33_buff_0, %c768_i32_23) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_24 = arith.constant 768 : i32
      func.call @main_kernel(%14, %in0_11_cons_buff_1, %of_in_mainB33_cons_buff_3, %of_in_mainB33_cons_buff_4, %of_in_mainB33_cons_buff_5, %of_in_mainB33_cons_buff_0, %of_in_mainB33_cons_buff_1, %of_out_mainB33_buff_1, %c768_i32_24) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      %17 = arith.addi %15, %c2_22 : index
      cf.br ^bb12(%17 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%of_in_mainB33_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_25 = arith.constant 0 : index
      %18 = memref.load %in0_11_cons_buff_0[%c0_25] : memref<96xbf16>
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB33_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_26 = arith.constant 0 : index
      %c2048_27 = arith.constant 2048 : index
      %c1_28 = arith.constant 1 : index
      %c2_29 = arith.constant 2 : index
      cf.br ^bb15(%c0_26 : index)
    ^bb15(%19: index):  // 2 preds: ^bb14, ^bb16
      %20 = arith.cmpi slt, %19, %c2048_27 : index
      cf.cond_br %20, ^bb16, ^bb17
    ^bb16:  // pred: ^bb15
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_30 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_11_cons_buff_1, %of_in_mainB33_cons_buff_2, %of_in_mainB33_cons_buff_3, %of_in_mainB33_cons_buff_4, %of_in_mainB33_cons_buff_5, %of_in_mainB33_cons_buff_0, %of_out_mainB33_buff_0, %c768_i32_30) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_31 = arith.constant 768 : i32
      func.call @main_kernel(%18, %in0_11_cons_buff_0, %of_in_mainB33_cons_buff_2, %of_in_mainB33_cons_buff_3, %of_in_mainB33_cons_buff_4, %of_in_mainB33_cons_buff_5, %of_in_mainB33_cons_buff_0, %of_out_mainB33_buff_1, %c768_i32_31) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      %21 = arith.addi %19, %c2_29 : index
      cf.br ^bb15(%21 : index)
    ^bb17:  // pred: ^bb15
      aie.use_lock(%of_in_mainB33_cons_prod_lock, Release, 5)
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_32 = arith.constant 0 : index
      %22 = memref.load %in0_11_cons_buff_1[%c0_32] : memref<96xbf16>
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB33_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_33 = arith.constant 0 : index
      %c2048_34 = arith.constant 2048 : index
      %c1_35 = arith.constant 1 : index
      %c2_36 = arith.constant 2 : index
      cf.br ^bb18(%c0_33 : index)
    ^bb18(%23: index):  // 2 preds: ^bb17, ^bb19
      %24 = arith.cmpi slt, %23, %c2048_34 : index
      cf.cond_br %24, ^bb19, ^bb20
    ^bb19:  // pred: ^bb18
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_37 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_11_cons_buff_0, %of_in_mainB33_cons_buff_1, %of_in_mainB33_cons_buff_2, %of_in_mainB33_cons_buff_3, %of_in_mainB33_cons_buff_4, %of_in_mainB33_cons_buff_5, %of_out_mainB33_buff_0, %c768_i32_37) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_38 = arith.constant 768 : i32
      func.call @main_kernel(%22, %in0_11_cons_buff_1, %of_in_mainB33_cons_buff_1, %of_in_mainB33_cons_buff_2, %of_in_mainB33_cons_buff_3, %of_in_mainB33_cons_buff_4, %of_in_mainB33_cons_buff_5, %of_out_mainB33_buff_1, %c768_i32_38) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      %25 = arith.addi %23, %c2_36 : index
      cf.br ^bb18(%25 : index)
    ^bb20:  // pred: ^bb18
      aie.use_lock(%of_in_mainB33_cons_prod_lock, Release, 5)
      %26 = arith.addi %0, %c6 : index
      cf.br ^bb1(%26 : index)
    ^bb21:  // pred: ^bb1
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_39 = arith.constant 0 : index
      %27 = memref.load %in0_11_cons_buff_0[%c0_39] : memref<96xbf16>
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB33_cons_cons_lock, AcquireGreaterEqual, 5)
      %c0_40 = arith.constant 0 : index
      %c2048_41 = arith.constant 2048 : index
      %c1_42 = arith.constant 1 : index
      %c2_43 = arith.constant 2 : index
      cf.br ^bb22(%c0_40 : index)
    ^bb22(%28: index):  // 2 preds: ^bb21, ^bb23
      %29 = arith.cmpi slt, %28, %c2048_41 : index
      cf.cond_br %29, ^bb23, ^bb24
    ^bb23:  // pred: ^bb22
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_44 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_11_cons_buff_1, %of_in_mainB33_cons_buff_0, %of_in_mainB33_cons_buff_1, %of_in_mainB33_cons_buff_2, %of_in_mainB33_cons_buff_3, %of_in_mainB33_cons_buff_4, %of_out_mainB33_buff_0, %c768_i32_44) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      %c768_i32_45 = arith.constant 768 : i32
      func.call @main_kernel(%27, %in0_11_cons_buff_0, %of_in_mainB33_cons_buff_0, %of_in_mainB33_cons_buff_1, %of_in_mainB33_cons_buff_2, %of_in_mainB33_cons_buff_3, %of_in_mainB33_cons_buff_4, %of_out_mainB33_buff_1, %c768_i32_45) : (bf16, memref<96xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<768xbf16>, memref<32xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%in0_11_cons_prod_lock, Release, 1)
      %30 = arith.addi %28, %c2_43 : index
      cf.br ^bb22(%30 : index)
    ^bb24:  // pred: ^bb22
      aie.use_lock(%of_in_mainB33_cons_prod_lock, Release, 5)
      aie.end
    } {link_with = "kernels.a"}
    aiex.runtime_sequence(%arg0: memref<23040xbf16>, %arg1: memref<23040xbf16>, %arg2: memref<23040xbf16>, %arg3: memref<23040xbf16>, %arg4: memref<23040xbf16>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 196704][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<23040xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 23040][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<23040xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg3[0, 0, 0, 0][1, 1, 1, 23040][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<23040xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg4[0, 0, 0, 0][1, 1, 1, 65536][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<23040xbf16>
      aiex.npu.dma_wait {symbol = @out}
    }
    aie.shim_dma_allocation @in0(MM2S, 0, 1)
    %mem_0_3 = aie.mem(%tile_0_3) {
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
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb10)
    ^bb4:  // 2 preds: ^bb3, ^bb9
      aie.use_lock(%of_in_mainA01_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA01_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA01_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA01_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA01_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_in_mainA01_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_in_mainA01_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA01_cons_buff_2 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_in_mainA01_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_mainA01_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA01_cons_buff_3 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%of_in_mainA01_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_in_mainA01_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA01_cons_buff_4 : memref<768xbf16>, 0, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%of_in_mainA01_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%of_in_mainA01_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA01_cons_buff_5 : memref<768xbf16>, 0, 768) {bd_id = 7 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA01_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb10:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%of_out_mainA01_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA01_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%of_out_mainA01_prod_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%of_out_mainA01_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA01_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%of_out_mainA01_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
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
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb10)
    ^bb4:  // 2 preds: ^bb3, ^bb9
      aie.use_lock(%of_in_mainA02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA02_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA02_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_in_mainA02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_in_mainA02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA02_cons_buff_2 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_in_mainA02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_mainA02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA02_cons_buff_3 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%of_in_mainA02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_in_mainA02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA02_cons_buff_4 : memref<768xbf16>, 0, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%of_in_mainA02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%of_in_mainA02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA02_cons_buff_5 : memref<768xbf16>, 0, 768) {bd_id = 7 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb10:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%of_out_mainA02_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA02_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%of_out_mainA02_prod_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%of_out_mainA02_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA02_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%of_out_mainA02_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      aie.end
    }
    %mem_0_5 = aie.mem(%tile_0_5) {
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
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb10)
    ^bb4:  // 2 preds: ^bb3, ^bb9
      aie.use_lock(%of_in_mainA03_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA03_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA03_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA03_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA03_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_in_mainA03_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_in_mainA03_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA03_cons_buff_2 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_in_mainA03_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_mainA03_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA03_cons_buff_3 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%of_in_mainA03_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_in_mainA03_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA03_cons_buff_4 : memref<768xbf16>, 0, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%of_in_mainA03_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%of_in_mainA03_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA03_cons_buff_5 : memref<768xbf16>, 0, 768) {bd_id = 7 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA03_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb10:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%of_out_mainA03_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA03_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%of_out_mainA03_prod_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%of_out_mainA03_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA03_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%of_out_mainA03_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      aie.end
    }
    %mem_1_3 = aie.mem(%tile_1_3) {
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
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb10)
    ^bb4:  // 2 preds: ^bb3, ^bb9
      aie.use_lock(%of_in_mainA11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA11_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA11_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_in_mainA11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_in_mainA11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA11_cons_buff_2 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_in_mainA11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_mainA11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA11_cons_buff_3 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%of_in_mainA11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_in_mainA11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA11_cons_buff_4 : memref<768xbf16>, 0, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%of_in_mainA11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%of_in_mainA11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA11_cons_buff_5 : memref<768xbf16>, 0, 768) {bd_id = 7 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb10:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%of_out_mainA11_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA11_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%of_out_mainA11_prod_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%of_out_mainA11_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA11_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%of_out_mainA11_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      aie.end
    }
    %mem_1_4 = aie.mem(%tile_1_4) {
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
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb10)
    ^bb4:  // 2 preds: ^bb3, ^bb9
      aie.use_lock(%of_in_mainA12_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA12_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA12_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA12_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA12_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_in_mainA12_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_in_mainA12_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA12_cons_buff_2 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_in_mainA12_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_mainA12_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA12_cons_buff_3 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%of_in_mainA12_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_in_mainA12_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA12_cons_buff_4 : memref<768xbf16>, 0, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%of_in_mainA12_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%of_in_mainA12_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA12_cons_buff_5 : memref<768xbf16>, 0, 768) {bd_id = 7 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA12_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb10:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%of_out_mainA12_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA12_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%of_out_mainA12_prod_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%of_out_mainA12_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA12_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%of_out_mainA12_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      aie.end
    }
    %mem_1_5 = aie.mem(%tile_1_5) {
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
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb10)
    ^bb4:  // 2 preds: ^bb3, ^bb9
      aie.use_lock(%of_in_mainA13_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA13_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA13_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA13_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA13_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_in_mainA13_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_in_mainA13_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA13_cons_buff_2 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_in_mainA13_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_mainA13_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA13_cons_buff_3 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%of_in_mainA13_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_in_mainA13_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA13_cons_buff_4 : memref<768xbf16>, 0, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%of_in_mainA13_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%of_in_mainA13_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA13_cons_buff_5 : memref<768xbf16>, 0, 768) {bd_id = 7 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA13_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb10:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%of_out_mainA13_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA13_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%of_out_mainA13_prod_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%of_out_mainA13_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA13_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%of_out_mainA13_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      aie.end
    }
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_6_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_6_cons_buff_0 : memref<96xbf16>, 0, 96) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_6_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_6_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_6_cons_buff_1 : memref<96xbf16>, 0, 96) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_6_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb10)
    ^bb4:  // 2 preds: ^bb3, ^bb9
      aie.use_lock(%of_in_mainB21_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB21_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainB21_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainB21_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB21_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_in_mainB21_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_in_mainB21_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB21_cons_buff_2 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_in_mainB21_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_mainB21_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB21_cons_buff_3 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%of_in_mainB21_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_in_mainB21_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB21_cons_buff_4 : memref<768xbf16>, 0, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%of_in_mainB21_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%of_in_mainB21_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB21_cons_buff_5 : memref<768xbf16>, 0, 768) {bd_id = 7 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainB21_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb10:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%of_out_mainB21_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB21_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%of_out_mainB21_prod_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%of_out_mainB21_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB21_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%of_out_mainB21_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      aie.end
    }
    %mem_2_4 = aie.mem(%tile_2_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_7_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_7_cons_buff_0 : memref<96xbf16>, 0, 96) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_7_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_7_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_7_cons_buff_1 : memref<96xbf16>, 0, 96) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_7_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb10)
    ^bb4:  // 2 preds: ^bb3, ^bb9
      aie.use_lock(%of_in_mainB22_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB22_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainB22_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainB22_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB22_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_in_mainB22_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_in_mainB22_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB22_cons_buff_2 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_in_mainB22_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_mainB22_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB22_cons_buff_3 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%of_in_mainB22_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_in_mainB22_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB22_cons_buff_4 : memref<768xbf16>, 0, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%of_in_mainB22_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%of_in_mainB22_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB22_cons_buff_5 : memref<768xbf16>, 0, 768) {bd_id = 7 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainB22_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb10:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%of_out_mainB22_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB22_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%of_out_mainB22_prod_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%of_out_mainB22_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB22_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%of_out_mainB22_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      aie.end
    }
    %mem_2_5 = aie.mem(%tile_2_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_8_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_8_cons_buff_0 : memref<96xbf16>, 0, 96) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_8_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_8_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_8_cons_buff_1 : memref<96xbf16>, 0, 96) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_8_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb10)
    ^bb4:  // 2 preds: ^bb3, ^bb9
      aie.use_lock(%of_in_mainB23_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB23_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainB23_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainB23_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB23_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_in_mainB23_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_in_mainB23_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB23_cons_buff_2 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_in_mainB23_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_mainB23_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB23_cons_buff_3 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%of_in_mainB23_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_in_mainB23_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB23_cons_buff_4 : memref<768xbf16>, 0, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%of_in_mainB23_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%of_in_mainB23_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB23_cons_buff_5 : memref<768xbf16>, 0, 768) {bd_id = 7 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainB23_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb10:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%of_out_mainB23_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB23_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%of_out_mainB23_prod_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%of_out_mainB23_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB23_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%of_out_mainB23_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      aie.end
    }
    %mem_3_3 = aie.mem(%tile_3_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_9_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_9_cons_buff_0 : memref<96xbf16>, 0, 96) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_9_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_9_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_9_cons_buff_1 : memref<96xbf16>, 0, 96) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_9_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb10)
    ^bb4:  // 2 preds: ^bb3, ^bb9
      aie.use_lock(%of_in_mainB31_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB31_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainB31_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainB31_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB31_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_in_mainB31_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_in_mainB31_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB31_cons_buff_2 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_in_mainB31_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_mainB31_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB31_cons_buff_3 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%of_in_mainB31_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_in_mainB31_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB31_cons_buff_4 : memref<768xbf16>, 0, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%of_in_mainB31_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%of_in_mainB31_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB31_cons_buff_5 : memref<768xbf16>, 0, 768) {bd_id = 7 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainB31_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb10:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%of_out_mainB31_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB31_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%of_out_mainB31_prod_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%of_out_mainB31_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB31_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%of_out_mainB31_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      aie.end
    }
    %mem_3_4 = aie.mem(%tile_3_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_10_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_10_cons_buff_0 : memref<96xbf16>, 0, 96) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_10_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_10_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_10_cons_buff_1 : memref<96xbf16>, 0, 96) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_10_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb10)
    ^bb4:  // 2 preds: ^bb3, ^bb9
      aie.use_lock(%of_in_mainB32_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB32_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainB32_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainB32_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB32_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_in_mainB32_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_in_mainB32_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB32_cons_buff_2 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_in_mainB32_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_mainB32_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB32_cons_buff_3 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%of_in_mainB32_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_in_mainB32_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB32_cons_buff_4 : memref<768xbf16>, 0, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%of_in_mainB32_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%of_in_mainB32_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB32_cons_buff_5 : memref<768xbf16>, 0, 768) {bd_id = 7 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainB32_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb10:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%of_out_mainB32_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB32_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%of_out_mainB32_prod_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%of_out_mainB32_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB32_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%of_out_mainB32_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      aie.end
    }
    %mem_3_5 = aie.mem(%tile_3_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_11_cons_buff_0 : memref<96xbf16>, 0, 96) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_11_cons_buff_1 : memref<96xbf16>, 0, 96) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb10)
    ^bb4:  // 2 preds: ^bb3, ^bb9
      aie.use_lock(%of_in_mainB33_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB33_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainB33_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainB33_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB33_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_in_mainB33_cons_cons_lock, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%of_in_mainB33_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB33_cons_buff_2 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_in_mainB33_cons_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%of_in_mainB33_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB33_cons_buff_3 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%of_in_mainB33_cons_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_in_mainB33_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB33_cons_buff_4 : memref<768xbf16>, 0, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%of_in_mainB33_cons_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%of_in_mainB33_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB33_cons_buff_5 : memref<768xbf16>, 0, 768) {bd_id = 7 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainB33_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb10:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%of_out_mainB33_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB33_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%of_out_mainB33_prod_lock, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%of_out_mainB33_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB33_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%of_out_mainB33_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      aie.end
    }
    aie.shim_dma_allocation @in1(MM2S, 0, 0)
    %memtile_dma_0_1 = aie.memtile_dma(%mem_tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 6)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%in1_cons_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 6)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<4608xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 768, 768) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<4608xbf16>, 768, 768) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 1536, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<4608xbf16>, 1536, 768) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(MM2S, 3, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 2304, 768) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<4608xbf16>, 2304, 768) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(MM2S, 4, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 3072, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<4608xbf16>, 3072, 768) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(MM2S, 5, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 3840, 768) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<4608xbf16>, 3840, 768) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      aie.end
    }
    aie.shim_dma_allocation @in2(MM2S, 0, 3)
    %memtile_dma_3_1 = aie.memtile_dma(%mem_tile_3_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%in2_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 6)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%in2_cons_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 6)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<4608xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<4608xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<4608xbf16>, 768, 768) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<4608xbf16>, 768, 768) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<4608xbf16>, 1536, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<4608xbf16>, 1536, 768) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(MM2S, 3, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<4608xbf16>, 2304, 768) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<4608xbf16>, 2304, 768) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(MM2S, 4, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<4608xbf16>, 3072, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<4608xbf16>, 3072, 768) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(MM2S, 5, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<4608xbf16>, 3840, 768) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<4608xbf16>, 3840, 768) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      aie.end
    }
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_0 : memref<192xbf16>, 0, 32) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_1 : memref<192xbf16>, 0, 32) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_0 : memref<192xbf16>, 32, 32) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_1 : memref<192xbf16>, 32, 32) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 2, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_0 : memref<192xbf16>, 64, 32) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_1 : memref<192xbf16>, 64, 32) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(S2MM, 3, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_0 : memref<192xbf16>, 96, 32) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_1 : memref<192xbf16>, 96, 32) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 4, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_0 : memref<192xbf16>, 128, 32) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_1 : memref<192xbf16>, 128, 32) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 5, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_0 : memref<192xbf16>, 160, 32) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_1 : memref<192xbf16>, 160, 32) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(MM2S, 0, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%out1_cons_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%out1_buff_0 : memref<192xbf16>, 0, 192) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%out1_prod_lock, Release, 6)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%out1_cons_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%out1_buff_1 : memref<192xbf16>, 0, 192) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%out1_prod_lock, Release, 6)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      aie.end
    }
    %memtile_dma_2_1 = aie.memtile_dma(%mem_tile_2_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_0 : memref<192xbf16>, 0, 32) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_1 : memref<192xbf16>, 0, 32) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_0 : memref<192xbf16>, 32, 32) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_1 : memref<192xbf16>, 32, 32) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 2, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_0 : memref<192xbf16>, 64, 32) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_1 : memref<192xbf16>, 64, 32) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(S2MM, 3, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_0 : memref<192xbf16>, 96, 32) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_1 : memref<192xbf16>, 96, 32) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 4, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_0 : memref<192xbf16>, 128, 32) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_1 : memref<192xbf16>, 128, 32) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 5, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_0 : memref<192xbf16>, 160, 32) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_1 : memref<192xbf16>, 160, 32) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(MM2S, 0, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%out2_cons_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%out2_buff_0 : memref<192xbf16>, 0, 192) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%out2_prod_lock, Release, 6)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%out2_cons_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%out2_buff_1 : memref<192xbf16>, 0, 192) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%out2_prod_lock, Release, 6)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      aie.end
    }
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%out1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_cons_buff_0 : memref<192xbf16>, 0, 192) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%out1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_cons_buff_1 : memref<192xbf16>, 0, 192) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%out1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%out2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_cons_buff_0 : memref<192xbf16>, 0, 192) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%out2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_cons_buff_1 : memref<192xbf16>, 0, 192) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_0 : memref<32xbf16>, 0, 32) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_1 : memref<32xbf16>, 0, 32) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @out(S2MM, 0, 1)
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
    aie.wire(%shim_mux_0_0 : North, %switchbox_0_0 : South)
    aie.wire(%shim_noc_tile_0_0 : DMA, %shim_mux_0_0 : DMA)
    aie.wire(%mem_tile_0_1 : Core, %switchbox_0_1 : Core)
    aie.wire(%mem_tile_0_1 : DMA, %switchbox_0_1 : DMA)
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
    aie.wire(%shim_noc_tile_1_0 : DMA, %shim_mux_1_0 : DMA)
    aie.wire(%switchbox_0_1 : East, %switchbox_1_1 : West)
    aie.wire(%mem_tile_1_1 : Core, %switchbox_1_1 : Core)
    aie.wire(%mem_tile_1_1 : DMA, %switchbox_1_1 : DMA)
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
    aie.wire(%mem_tile_2_1 : Core, %switchbox_2_1 : Core)
    aie.wire(%mem_tile_2_1 : DMA, %switchbox_2_1 : DMA)
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
    aie.wire(%shim_noc_tile_3_0 : DMA, %shim_mux_3_0 : DMA)
    aie.wire(%switchbox_2_1 : East, %switchbox_3_1 : West)
    aie.wire(%mem_tile_3_1 : Core, %switchbox_3_1 : Core)
    aie.wire(%mem_tile_3_1 : DMA, %switchbox_3_1 : DMA)
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

