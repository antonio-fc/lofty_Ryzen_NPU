module {
  aie.device(npu1_4col) {
    memref.global "public" @out2_cons : memref<4608xbf16>
    memref.global "public" @out2 : memref<4608xbf16>
    memref.global "public" @out1_cons : memref<4608xbf16>
    memref.global "public" @out1 : memref<4608xbf16>
    memref.global "public" @of_out_mainB33_cons : memref<768xbf16>
    memref.global "public" @of_out_mainB33 : memref<768xbf16>
    memref.global "public" @of_out_mainA13_cons : memref<768xbf16>
    memref.global "public" @of_out_mainA13 : memref<768xbf16>
    memref.global "public" @of_out_mainB32_cons : memref<768xbf16>
    memref.global "public" @of_out_mainB32 : memref<768xbf16>
    memref.global "public" @of_out_mainA12_cons : memref<768xbf16>
    memref.global "public" @of_out_mainA12 : memref<768xbf16>
    memref.global "public" @of_out_mainB31_cons : memref<768xbf16>
    memref.global "public" @of_out_mainB31 : memref<768xbf16>
    memref.global "public" @of_out_mainA11_cons : memref<768xbf16>
    memref.global "public" @of_out_mainA11 : memref<768xbf16>
    memref.global "public" @of_out_mainB23_cons : memref<768xbf16>
    memref.global "public" @of_out_mainB23 : memref<768xbf16>
    memref.global "public" @of_out_mainA03_cons : memref<768xbf16>
    memref.global "public" @of_out_mainA03 : memref<768xbf16>
    memref.global "public" @of_out_mainB22_cons : memref<768xbf16>
    memref.global "public" @of_out_mainB22 : memref<768xbf16>
    memref.global "public" @of_out_mainA02_cons : memref<768xbf16>
    memref.global "public" @of_out_mainA02 : memref<768xbf16>
    memref.global "public" @of_out_mainB21_cons : memref<768xbf16>
    memref.global "public" @of_out_mainB21 : memref<768xbf16>
    memref.global "public" @of_out_mainA01_cons : memref<768xbf16>
    memref.global "public" @of_out_mainA01 : memref<768xbf16>
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
    memref.global "public" @in0_0_cons : memref<2xbf16>
    memref.global "public" @in0_1_cons : memref<2xbf16>
    memref.global "public" @in0_2_cons : memref<2xbf16>
    memref.global "public" @in0_3_cons : memref<2xbf16>
    memref.global "public" @in0_4_cons : memref<2xbf16>
    memref.global "public" @in0_5_cons : memref<2xbf16>
    memref.global "public" @in0 : memref<2xbf16>
    func.func private @passthrough(memref<768xbf16>, memref<768xbf16>, i32)
    %shim_noc_tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
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
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_2_4 = aie.tile(2, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_2_5 = aie.tile(2, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %shim_noc_tile_3_0 = aie.tile(3, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_3_1 = aie.tile(3, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_3_3 = aie.tile(3, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_3_4 = aie.tile(3, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_3_5 = aie.tile(3, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %out2_buff_0 = aie.buffer(%mem_tile_3_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "out2_buff_0"} : memref<4608xbf16> 
    %out2_prod_lock = aie.lock(%mem_tile_3_1, 0) {init = 6 : i32, sym_name = "out2_prod_lock"}
    %out2_cons_lock = aie.lock(%mem_tile_3_1, 1) {init = 0 : i32, sym_name = "out2_cons_lock"}
    %out1_buff_0 = aie.buffer(%mem_tile_0_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "out1_buff_0"} : memref<4608xbf16> 
    %out1_prod_lock = aie.lock(%mem_tile_0_1, 0) {init = 6 : i32, sym_name = "out1_prod_lock"}
    %out1_cons_lock = aie.lock(%mem_tile_0_1, 1) {init = 0 : i32, sym_name = "out1_cons_lock"}
    %of_out_mainB33_buff_0 = aie.buffer(%tile_3_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainB33_buff_0"} : memref<768xbf16> 
    %of_out_mainB33_buff_1 = aie.buffer(%tile_3_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainB33_buff_1"} : memref<768xbf16> 
    %of_out_mainB33_prod_lock = aie.lock(%tile_3_5, 2) {init = 2 : i32, sym_name = "of_out_mainB33_prod_lock"}
    %of_out_mainB33_cons_lock = aie.lock(%tile_3_5, 3) {init = 0 : i32, sym_name = "of_out_mainB33_cons_lock"}
    %of_out_mainA13_buff_0 = aie.buffer(%tile_1_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainA13_buff_0"} : memref<768xbf16> 
    %of_out_mainA13_buff_1 = aie.buffer(%tile_1_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainA13_buff_1"} : memref<768xbf16> 
    %of_out_mainA13_prod_lock = aie.lock(%tile_1_5, 4) {init = 2 : i32, sym_name = "of_out_mainA13_prod_lock"}
    %of_out_mainA13_cons_lock = aie.lock(%tile_1_5, 5) {init = 0 : i32, sym_name = "of_out_mainA13_cons_lock"}
    %of_out_mainB32_buff_0 = aie.buffer(%tile_3_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainB32_buff_0"} : memref<768xbf16> 
    %of_out_mainB32_buff_1 = aie.buffer(%tile_3_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainB32_buff_1"} : memref<768xbf16> 
    %of_out_mainB32_prod_lock = aie.lock(%tile_3_4, 2) {init = 2 : i32, sym_name = "of_out_mainB32_prod_lock"}
    %of_out_mainB32_cons_lock = aie.lock(%tile_3_4, 3) {init = 0 : i32, sym_name = "of_out_mainB32_cons_lock"}
    %of_out_mainA12_buff_0 = aie.buffer(%tile_1_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainA12_buff_0"} : memref<768xbf16> 
    %of_out_mainA12_buff_1 = aie.buffer(%tile_1_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainA12_buff_1"} : memref<768xbf16> 
    %of_out_mainA12_prod_lock = aie.lock(%tile_1_4, 4) {init = 2 : i32, sym_name = "of_out_mainA12_prod_lock"}
    %of_out_mainA12_cons_lock = aie.lock(%tile_1_4, 5) {init = 0 : i32, sym_name = "of_out_mainA12_cons_lock"}
    %of_out_mainB31_buff_0 = aie.buffer(%tile_3_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainB31_buff_0"} : memref<768xbf16> 
    %of_out_mainB31_buff_1 = aie.buffer(%tile_3_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainB31_buff_1"} : memref<768xbf16> 
    %of_out_mainB31_prod_lock = aie.lock(%tile_3_3, 2) {init = 2 : i32, sym_name = "of_out_mainB31_prod_lock"}
    %of_out_mainB31_cons_lock = aie.lock(%tile_3_3, 3) {init = 0 : i32, sym_name = "of_out_mainB31_cons_lock"}
    %of_out_mainA11_buff_0 = aie.buffer(%tile_1_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainA11_buff_0"} : memref<768xbf16> 
    %of_out_mainA11_buff_1 = aie.buffer(%tile_1_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainA11_buff_1"} : memref<768xbf16> 
    %of_out_mainA11_prod_lock = aie.lock(%tile_1_3, 4) {init = 2 : i32, sym_name = "of_out_mainA11_prod_lock"}
    %of_out_mainA11_cons_lock = aie.lock(%tile_1_3, 5) {init = 0 : i32, sym_name = "of_out_mainA11_cons_lock"}
    %of_out_mainB23_buff_0 = aie.buffer(%tile_2_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainB23_buff_0"} : memref<768xbf16> 
    %of_out_mainB23_buff_1 = aie.buffer(%tile_2_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainB23_buff_1"} : memref<768xbf16> 
    %of_out_mainB23_prod_lock = aie.lock(%tile_2_5, 2) {init = 2 : i32, sym_name = "of_out_mainB23_prod_lock"}
    %of_out_mainB23_cons_lock = aie.lock(%tile_2_5, 3) {init = 0 : i32, sym_name = "of_out_mainB23_cons_lock"}
    %of_out_mainA03_buff_0 = aie.buffer(%tile_0_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainA03_buff_0"} : memref<768xbf16> 
    %of_out_mainA03_buff_1 = aie.buffer(%tile_0_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainA03_buff_1"} : memref<768xbf16> 
    %of_out_mainA03_prod_lock = aie.lock(%tile_0_5, 4) {init = 2 : i32, sym_name = "of_out_mainA03_prod_lock"}
    %of_out_mainA03_cons_lock = aie.lock(%tile_0_5, 5) {init = 0 : i32, sym_name = "of_out_mainA03_cons_lock"}
    %of_out_mainB22_buff_0 = aie.buffer(%tile_2_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainB22_buff_0"} : memref<768xbf16> 
    %of_out_mainB22_buff_1 = aie.buffer(%tile_2_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainB22_buff_1"} : memref<768xbf16> 
    %of_out_mainB22_prod_lock = aie.lock(%tile_2_4, 2) {init = 2 : i32, sym_name = "of_out_mainB22_prod_lock"}
    %of_out_mainB22_cons_lock = aie.lock(%tile_2_4, 3) {init = 0 : i32, sym_name = "of_out_mainB22_cons_lock"}
    %of_out_mainA02_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainA02_buff_0"} : memref<768xbf16> 
    %of_out_mainA02_buff_1 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainA02_buff_1"} : memref<768xbf16> 
    %of_out_mainA02_prod_lock = aie.lock(%tile_0_4, 4) {init = 2 : i32, sym_name = "of_out_mainA02_prod_lock"}
    %of_out_mainA02_cons_lock = aie.lock(%tile_0_4, 5) {init = 0 : i32, sym_name = "of_out_mainA02_cons_lock"}
    %of_out_mainB21_buff_0 = aie.buffer(%tile_2_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainB21_buff_0"} : memref<768xbf16> 
    %of_out_mainB21_buff_1 = aie.buffer(%tile_2_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainB21_buff_1"} : memref<768xbf16> 
    %of_out_mainB21_prod_lock = aie.lock(%tile_2_3, 2) {init = 2 : i32, sym_name = "of_out_mainB21_prod_lock"}
    %of_out_mainB21_cons_lock = aie.lock(%tile_2_3, 3) {init = 0 : i32, sym_name = "of_out_mainB21_cons_lock"}
    %of_out_mainA01_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "of_out_mainA01_buff_0"} : memref<768xbf16> 
    %of_out_mainA01_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_out_mainA01_buff_1"} : memref<768xbf16> 
    %of_out_mainA01_prod_lock = aie.lock(%tile_0_3, 4) {init = 2 : i32, sym_name = "of_out_mainA01_prod_lock"}
    %of_out_mainA01_cons_lock = aie.lock(%tile_0_3, 5) {init = 0 : i32, sym_name = "of_out_mainA01_cons_lock"}
    %of_in_mainB33_cons_buff_0 = aie.buffer(%tile_3_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainB33_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainB33_cons_buff_1 = aie.buffer(%tile_3_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainB33_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainB33_cons_prod_lock = aie.lock(%tile_3_5, 0) {init = 2 : i32, sym_name = "of_in_mainB33_cons_prod_lock"}
    %of_in_mainB33_cons_cons_lock = aie.lock(%tile_3_5, 1) {init = 0 : i32, sym_name = "of_in_mainB33_cons_cons_lock"}
    %of_in_mainA13_cons_buff_0 = aie.buffer(%tile_1_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainA13_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainA13_cons_buff_1 = aie.buffer(%tile_1_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainA13_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainA13_cons_prod_lock = aie.lock(%tile_1_5, 2) {init = 2 : i32, sym_name = "of_in_mainA13_cons_prod_lock"}
    %of_in_mainA13_cons_cons_lock = aie.lock(%tile_1_5, 3) {init = 0 : i32, sym_name = "of_in_mainA13_cons_cons_lock"}
    %of_in_mainB32_cons_buff_0 = aie.buffer(%tile_3_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainB32_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainB32_cons_buff_1 = aie.buffer(%tile_3_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainB32_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainB32_cons_prod_lock = aie.lock(%tile_3_4, 0) {init = 2 : i32, sym_name = "of_in_mainB32_cons_prod_lock"}
    %of_in_mainB32_cons_cons_lock = aie.lock(%tile_3_4, 1) {init = 0 : i32, sym_name = "of_in_mainB32_cons_cons_lock"}
    %of_in_mainA12_cons_buff_0 = aie.buffer(%tile_1_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainA12_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainA12_cons_buff_1 = aie.buffer(%tile_1_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainA12_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainA12_cons_prod_lock = aie.lock(%tile_1_4, 2) {init = 2 : i32, sym_name = "of_in_mainA12_cons_prod_lock"}
    %of_in_mainA12_cons_cons_lock = aie.lock(%tile_1_4, 3) {init = 0 : i32, sym_name = "of_in_mainA12_cons_cons_lock"}
    %of_in_mainB31_cons_buff_0 = aie.buffer(%tile_3_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainB31_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainB31_cons_buff_1 = aie.buffer(%tile_3_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainB31_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainB31_cons_prod_lock = aie.lock(%tile_3_3, 0) {init = 2 : i32, sym_name = "of_in_mainB31_cons_prod_lock"}
    %of_in_mainB31_cons_cons_lock = aie.lock(%tile_3_3, 1) {init = 0 : i32, sym_name = "of_in_mainB31_cons_cons_lock"}
    %of_in_mainA11_cons_buff_0 = aie.buffer(%tile_1_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainA11_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainA11_cons_buff_1 = aie.buffer(%tile_1_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainA11_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainA11_cons_prod_lock = aie.lock(%tile_1_3, 2) {init = 2 : i32, sym_name = "of_in_mainA11_cons_prod_lock"}
    %of_in_mainA11_cons_cons_lock = aie.lock(%tile_1_3, 3) {init = 0 : i32, sym_name = "of_in_mainA11_cons_cons_lock"}
    %of_in_mainB23_cons_buff_0 = aie.buffer(%tile_2_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainB23_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainB23_cons_buff_1 = aie.buffer(%tile_2_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainB23_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainB23_cons_prod_lock = aie.lock(%tile_2_5, 0) {init = 2 : i32, sym_name = "of_in_mainB23_cons_prod_lock"}
    %of_in_mainB23_cons_cons_lock = aie.lock(%tile_2_5, 1) {init = 0 : i32, sym_name = "of_in_mainB23_cons_cons_lock"}
    %of_in_mainA03_cons_buff_0 = aie.buffer(%tile_0_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainA03_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainA03_cons_buff_1 = aie.buffer(%tile_0_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainA03_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainA03_cons_prod_lock = aie.lock(%tile_0_5, 2) {init = 2 : i32, sym_name = "of_in_mainA03_cons_prod_lock"}
    %of_in_mainA03_cons_cons_lock = aie.lock(%tile_0_5, 3) {init = 0 : i32, sym_name = "of_in_mainA03_cons_cons_lock"}
    %of_in_mainB22_cons_buff_0 = aie.buffer(%tile_2_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainB22_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainB22_cons_buff_1 = aie.buffer(%tile_2_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainB22_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainB22_cons_prod_lock = aie.lock(%tile_2_4, 0) {init = 2 : i32, sym_name = "of_in_mainB22_cons_prod_lock"}
    %of_in_mainB22_cons_cons_lock = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "of_in_mainB22_cons_cons_lock"}
    %of_in_mainA02_cons_buff_0 = aie.buffer(%tile_0_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainA02_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainA02_cons_buff_1 = aie.buffer(%tile_0_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainA02_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainA02_cons_prod_lock = aie.lock(%tile_0_4, 2) {init = 2 : i32, sym_name = "of_in_mainA02_cons_prod_lock"}
    %of_in_mainA02_cons_cons_lock = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "of_in_mainA02_cons_cons_lock"}
    %of_in_mainB21_cons_buff_0 = aie.buffer(%tile_2_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainB21_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainB21_cons_buff_1 = aie.buffer(%tile_2_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainB21_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainB21_cons_prod_lock = aie.lock(%tile_2_3, 0) {init = 2 : i32, sym_name = "of_in_mainB21_cons_prod_lock"}
    %of_in_mainB21_cons_cons_lock = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "of_in_mainB21_cons_cons_lock"}
    %of_in_mainA01_cons_buff_0 = aie.buffer(%tile_0_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "of_in_mainA01_cons_buff_0"} : memref<768xbf16> 
    %of_in_mainA01_cons_buff_1 = aie.buffer(%tile_0_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "of_in_mainA01_cons_buff_1"} : memref<768xbf16> 
    %of_in_mainA01_cons_prod_lock = aie.lock(%tile_0_3, 2) {init = 2 : i32, sym_name = "of_in_mainA01_cons_prod_lock"}
    %of_in_mainA01_cons_cons_lock = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "of_in_mainA01_cons_cons_lock"}
    %in2_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_0"} : memref<4608xbf16> 
    %in2_cons_prod_lock = aie.lock(%mem_tile_2_1, 0) {init = 6 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in1_cons_buff_0"} : memref<4608xbf16> 
    %in1_cons_prod_lock = aie.lock(%mem_tile_1_1, 0) {init = 6 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in0_0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "in0_0_cons_buff_0"} : memref<2xbf16> 
    %in0_0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "in0_0_cons_buff_1"} : memref<2xbf16> 
    %in0_0_cons_prod_lock = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "in0_0_cons_prod_lock"}
    %in0_0_cons_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "in0_0_cons_cons_lock"}
    %in0_1_cons_buff_0 = aie.buffer(%tile_0_4) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "in0_1_cons_buff_0"} : memref<2xbf16> 
    %in0_1_cons_buff_1 = aie.buffer(%tile_0_4) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "in0_1_cons_buff_1"} : memref<2xbf16> 
    %in0_1_cons_prod_lock = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "in0_1_cons_prod_lock"}
    %in0_1_cons_cons_lock = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "in0_1_cons_cons_lock"}
    %in0_2_cons_buff_0 = aie.buffer(%tile_0_5) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "in0_2_cons_buff_0"} : memref<2xbf16> 
    %in0_2_cons_buff_1 = aie.buffer(%tile_0_5) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "in0_2_cons_buff_1"} : memref<2xbf16> 
    %in0_2_cons_prod_lock = aie.lock(%tile_0_5, 0) {init = 2 : i32, sym_name = "in0_2_cons_prod_lock"}
    %in0_2_cons_cons_lock = aie.lock(%tile_0_5, 1) {init = 0 : i32, sym_name = "in0_2_cons_cons_lock"}
    %in0_3_cons_buff_0 = aie.buffer(%tile_1_3) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "in0_3_cons_buff_0"} : memref<2xbf16> 
    %in0_3_cons_buff_1 = aie.buffer(%tile_1_3) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "in0_3_cons_buff_1"} : memref<2xbf16> 
    %in0_3_cons_prod_lock = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "in0_3_cons_prod_lock"}
    %in0_3_cons_cons_lock = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "in0_3_cons_cons_lock"}
    %in0_4_cons_buff_0 = aie.buffer(%tile_1_4) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "in0_4_cons_buff_0"} : memref<2xbf16> 
    %in0_4_cons_buff_1 = aie.buffer(%tile_1_4) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "in0_4_cons_buff_1"} : memref<2xbf16> 
    %in0_4_cons_prod_lock = aie.lock(%tile_1_4, 0) {init = 2 : i32, sym_name = "in0_4_cons_prod_lock"}
    %in0_4_cons_cons_lock = aie.lock(%tile_1_4, 1) {init = 0 : i32, sym_name = "in0_4_cons_cons_lock"}
    %in0_5_cons_buff_0 = aie.buffer(%tile_1_5) {address = 2560 : i32, mem_bank = 0 : i32, sym_name = "in0_5_cons_buff_0"} : memref<2xbf16> 
    %in0_5_cons_buff_1 = aie.buffer(%tile_1_5) {address = 17920 : i32, mem_bank = 1 : i32, sym_name = "in0_5_cons_buff_1"} : memref<2xbf16> 
    %in0_5_cons_prod_lock = aie.lock(%tile_1_5, 0) {init = 2 : i32, sym_name = "in0_5_cons_prod_lock"}
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
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_2_3, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 1, %tile_0_4, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 1, %tile_2_4, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 2, %tile_0_5, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 2, %tile_2_5, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 3, %tile_1_3, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 3, %tile_3_3, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 4, %tile_1_4, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 4, %tile_3_4, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 5, %tile_1_5, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 5, %tile_3_5, DMA : 0)
    aie.flow(%tile_0_3, DMA : 0, %mem_tile_0_1, DMA : 0)
    aie.flow(%tile_2_3, DMA : 0, %mem_tile_3_1, DMA : 0)
    aie.flow(%tile_0_4, DMA : 0, %mem_tile_0_1, DMA : 1)
    aie.flow(%tile_2_4, DMA : 0, %mem_tile_3_1, DMA : 1)
    aie.flow(%tile_0_5, DMA : 0, %mem_tile_0_1, DMA : 2)
    aie.flow(%tile_2_5, DMA : 0, %mem_tile_3_1, DMA : 2)
    aie.flow(%tile_1_3, DMA : 0, %mem_tile_0_1, DMA : 3)
    aie.flow(%tile_3_3, DMA : 0, %mem_tile_3_1, DMA : 3)
    aie.flow(%tile_1_4, DMA : 0, %mem_tile_0_1, DMA : 4)
    aie.flow(%tile_3_4, DMA : 0, %mem_tile_3_1, DMA : 4)
    aie.flow(%tile_1_5, DMA : 0, %mem_tile_0_1, DMA : 5)
    aie.flow(%tile_3_5, DMA : 0, %mem_tile_3_1, DMA : 5)
    aie.flow(%mem_tile_0_1, DMA : 0, %shim_noc_tile_0_0, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 0, %shim_noc_tile_3_0, DMA : 0)
    %core_0_3 = aie.core(%tile_0_3) {
      %c768_i32 = arith.constant 768 : i32
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA01_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA01_cons_buff_0, %of_out_mainA01_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA01_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA01_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA01_cons_buff_1, %of_out_mainA01_buff_1, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA01_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainA01_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA01_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA01_cons_buff_0, %of_out_mainA01_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA01_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA01_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c768_i32 = arith.constant 768 : i32
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB21_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB21_cons_buff_0, %of_out_mainB21_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB21_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB21_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB21_cons_buff_1, %of_out_mainB21_buff_1, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB21_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainB21_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB21_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB21_cons_buff_0, %of_out_mainB21_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB21_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB21_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c768_i32 = arith.constant 768 : i32
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA02_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA02_cons_buff_0, %of_out_mainA02_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA02_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA02_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA02_cons_buff_1, %of_out_mainA02_buff_1, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA02_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainA02_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA02_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA02_cons_buff_0, %of_out_mainA02_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA02_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA02_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_2_4 = aie.core(%tile_2_4) {
      %c768_i32 = arith.constant 768 : i32
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB22_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB22_cons_buff_0, %of_out_mainB22_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB22_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB22_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB22_cons_buff_1, %of_out_mainB22_buff_1, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB22_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainB22_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB22_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB22_cons_buff_0, %of_out_mainB22_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB22_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB22_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_0_5 = aie.core(%tile_0_5) {
      %c768_i32 = arith.constant 768 : i32
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA03_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA03_cons_buff_0, %of_out_mainA03_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA03_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA03_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA03_cons_buff_1, %of_out_mainA03_buff_1, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA03_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainA03_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA03_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA03_cons_buff_0, %of_out_mainA03_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA03_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA03_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_2_5 = aie.core(%tile_2_5) {
      %c768_i32 = arith.constant 768 : i32
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB23_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB23_cons_buff_0, %of_out_mainB23_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB23_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB23_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB23_cons_buff_1, %of_out_mainB23_buff_1, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB23_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainB23_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB23_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB23_cons_buff_0, %of_out_mainB23_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB23_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB23_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_1_3 = aie.core(%tile_1_3) {
      %c768_i32 = arith.constant 768 : i32
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA11_cons_buff_0, %of_out_mainA11_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA11_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA11_cons_buff_1, %of_out_mainA11_buff_1, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA11_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainA11_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA11_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA11_cons_buff_0, %of_out_mainA11_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA11_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA11_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c768_i32 = arith.constant 768 : i32
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB31_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB31_cons_buff_0, %of_out_mainB31_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB31_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB31_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB31_cons_buff_1, %of_out_mainB31_buff_1, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB31_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainB31_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB31_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB31_cons_buff_0, %of_out_mainB31_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB31_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB31_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_1_4 = aie.core(%tile_1_4) {
      %c768_i32 = arith.constant 768 : i32
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA12_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA12_cons_buff_0, %of_out_mainA12_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA12_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA12_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA12_cons_buff_1, %of_out_mainA12_buff_1, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA12_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainA12_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA12_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA12_cons_buff_0, %of_out_mainA12_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA12_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA12_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_3_4 = aie.core(%tile_3_4) {
      %c768_i32 = arith.constant 768 : i32
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB32_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB32_cons_buff_0, %of_out_mainB32_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB32_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB32_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB32_cons_buff_1, %of_out_mainB32_buff_1, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB32_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainB32_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB32_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB32_cons_buff_0, %of_out_mainB32_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB32_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB32_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_1_5 = aie.core(%tile_1_5) {
      %c768_i32 = arith.constant 768 : i32
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainA13_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA13_cons_buff_0, %of_out_mainA13_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA13_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainA13_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA13_cons_buff_1, %of_out_mainA13_buff_1, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA13_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainA13_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainA13_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainA13_cons_buff_0, %of_out_mainA13_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainA13_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainA13_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_3_5 = aie.core(%tile_3_5) {
      %c768_i32 = arith.constant 768 : i32
      %c0 = arith.constant 0 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB33_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB33_cons_buff_0, %of_out_mainB33_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB33_cons_prod_lock, Release, 1)
      aie.use_lock(%of_in_mainB33_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB33_cons_buff_1, %of_out_mainB33_buff_1, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB33_cons_prod_lock, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%of_in_mainB33_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%of_out_mainB33_prod_lock, AcquireGreaterEqual, 1)
      func.call @passthrough(%of_in_mainB33_cons_buff_0, %of_out_mainB33_buff_0, %c768_i32) : (memref<768xbf16>, memref<768xbf16>, i32) -> ()
      aie.use_lock(%of_out_mainB33_cons_lock, Release, 1)
      aie.use_lock(%of_in_mainB33_cons_prod_lock, Release, 1)
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
      %3 = memref.get_global @blockwrite_data_1 : memref<8xi32>
      aiex.npu.blockwrite(%3) {address = 118784 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118788 : ui32, arg_idx = 3 : i32, arg_plus = 0 : i32}
      aiex.npu.maskwrite32 {address = 119296 : ui32, column = 0 : i32, mask = 3840 : ui32, row = 0 : i32, value = 3840 : ui32}
      aiex.npu.write32 {address = 119300 : ui32, column = 0 : i32, row = 0 : i32, value = 2147483648 : ui32}
      aiex.npu.sync {channel = 0 : i32, column = 0 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
    }
    aie.shim_dma_allocation @in0(MM2S, 0, 0)
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_in_mainA01_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA01_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA01_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA01_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA01_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA01_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%of_out_mainA01_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA01_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_out_mainA01_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_out_mainA01_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA01_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_out_mainA01_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_in_mainA02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA02_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA02_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA02_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA02_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%of_out_mainA02_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA02_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_out_mainA02_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_out_mainA02_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA02_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_out_mainA02_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_0_5 = aie.mem(%tile_0_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_in_mainA03_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA03_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA03_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA03_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA03_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA03_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%of_out_mainA03_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA03_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_out_mainA03_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_out_mainA03_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA03_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_out_mainA03_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_in_mainA11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA11_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA11_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA11_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA11_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%of_out_mainA11_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA11_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_out_mainA11_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_out_mainA11_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA11_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_out_mainA11_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_1_4 = aie.mem(%tile_1_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_in_mainA12_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA12_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA12_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA12_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA12_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA12_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%of_out_mainA12_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA12_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_out_mainA12_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_out_mainA12_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA12_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_out_mainA12_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    %mem_1_5 = aie.mem(%tile_1_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_in_mainA13_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA13_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_in_mainA13_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_in_mainA13_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainA13_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_in_mainA13_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 0, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%of_out_mainA13_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA13_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%of_out_mainA13_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%of_out_mainA13_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainA13_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%of_out_mainA13_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @in1(MM2S, 0, 1)
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 6)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(MM2S, 1, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 768, 768) {bd_id = 24 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      %3 = aie.dma_start(MM2S, 2, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 1536, 768) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      %4 = aie.dma_start(MM2S, 3, ^bb9, ^bb10)
    ^bb9:  // 2 preds: ^bb8, ^bb9
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 2304, 768) {bd_id = 25 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb10:  // pred: ^bb8
      %5 = aie.dma_start(MM2S, 4, ^bb11, ^bb12)
    ^bb11:  // 2 preds: ^bb10, ^bb11
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 3072, 768) {bd_id = 3 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb12:  // pred: ^bb10
      %6 = aie.dma_start(MM2S, 5, ^bb13, ^bb14)
    ^bb13:  // 2 preds: ^bb12, ^bb13
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 3840, 768) {bd_id = 26 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb14:  // pred: ^bb12
      aie.end
    }
    aie.shim_dma_allocation @in2(MM2S, 0, 2)
    %memtile_dma_2_1 = aie.memtile_dma(%mem_tile_2_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%in2_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 6)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<4608xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(MM2S, 1, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<4608xbf16>, 768, 768) {bd_id = 24 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      %3 = aie.dma_start(MM2S, 2, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<4608xbf16>, 1536, 768) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      %4 = aie.dma_start(MM2S, 3, ^bb9, ^bb10)
    ^bb9:  // 2 preds: ^bb8, ^bb9
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<4608xbf16>, 2304, 768) {bd_id = 25 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb10:  // pred: ^bb8
      %5 = aie.dma_start(MM2S, 4, ^bb11, ^bb12)
    ^bb11:  // 2 preds: ^bb10, ^bb11
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<4608xbf16>, 3072, 768) {bd_id = 3 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb12:  // pred: ^bb10
      %6 = aie.dma_start(MM2S, 5, ^bb13, ^bb14)
    ^bb13:  // 2 preds: ^bb12, ^bb13
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<4608xbf16>, 3840, 768) {bd_id = 26 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb14:  // pred: ^bb12
      aie.end
    }
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_mainB21_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB21_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_mainB21_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB21_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB21_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_mainB21_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_out_mainB21_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB21_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_out_mainB21_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_out_mainB21_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB21_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_out_mainB21_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_2_4 = aie.mem(%tile_2_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_mainB22_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB22_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_mainB22_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB22_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB22_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_mainB22_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_out_mainB22_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB22_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_out_mainB22_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_out_mainB22_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB22_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_out_mainB22_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_2_5 = aie.mem(%tile_2_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_mainB23_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB23_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_mainB23_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB23_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB23_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_mainB23_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_out_mainB23_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB23_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_out_mainB23_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_out_mainB23_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB23_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_out_mainB23_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_3 = aie.mem(%tile_3_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_mainB31_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB31_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_mainB31_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB31_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB31_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_mainB31_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_out_mainB31_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB31_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_out_mainB31_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_out_mainB31_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB31_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_out_mainB31_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_4 = aie.mem(%tile_3_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_mainB32_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB32_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_mainB32_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB32_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB32_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_mainB32_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_out_mainB32_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB32_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_out_mainB32_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_out_mainB32_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB32_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_out_mainB32_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_5 = aie.mem(%tile_3_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%of_in_mainB33_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB33_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%of_in_mainB33_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%of_in_mainB33_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_in_mainB33_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%of_in_mainB33_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%of_out_mainB33_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB33_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%of_out_mainB33_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%of_out_mainB33_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%of_out_mainB33_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%of_out_mainB33_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %memtile_dma_0_1 = aie.memtile_dma(%mem_tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_0 : memref<4608xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_0 : memref<4608xbf16>, 768, 768) {bd_id = 24 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(S2MM, 2, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_0 : memref<4608xbf16>, 1536, 768) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      %3 = aie.dma_start(S2MM, 3, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_0 : memref<4608xbf16>, 2304, 768) {bd_id = 25 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      %4 = aie.dma_start(S2MM, 4, ^bb9, ^bb10)
    ^bb9:  // 2 preds: ^bb8, ^bb9
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_0 : memref<4608xbf16>, 3072, 768) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb10:  // pred: ^bb8
      %5 = aie.dma_start(S2MM, 5, ^bb11, ^bb12)
    ^bb11:  // 2 preds: ^bb10, ^bb11
      aie.use_lock(%out1_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out1_buff_0 : memref<4608xbf16>, 3840, 768) {bd_id = 26 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%out1_cons_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb12:  // pred: ^bb10
      %6 = aie.dma_start(MM2S, 0, ^bb13, ^bb14)
    ^bb13:  // 2 preds: ^bb12, ^bb13
      aie.use_lock(%out1_cons_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%out1_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 3 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out1_prod_lock, Release, 6)
      aie.next_bd ^bb13
    ^bb14:  // pred: ^bb12
      aie.end
    }
    %memtile_dma_3_1 = aie.memtile_dma(%mem_tile_3_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb2)
    ^bb1:  // 2 preds: ^bb0, ^bb1
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_0 : memref<4608xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb2:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb3, ^bb4)
    ^bb3:  // 2 preds: ^bb2, ^bb3
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_0 : memref<4608xbf16>, 768, 768) {bd_id = 24 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb3
    ^bb4:  // pred: ^bb2
      %2 = aie.dma_start(S2MM, 2, ^bb5, ^bb6)
    ^bb5:  // 2 preds: ^bb4, ^bb5
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_0 : memref<4608xbf16>, 1536, 768) {bd_id = 1 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb6:  // pred: ^bb4
      %3 = aie.dma_start(S2MM, 3, ^bb7, ^bb8)
    ^bb7:  // 2 preds: ^bb6, ^bb7
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_0 : memref<4608xbf16>, 2304, 768) {bd_id = 25 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb8:  // pred: ^bb6
      %4 = aie.dma_start(S2MM, 4, ^bb9, ^bb10)
    ^bb9:  // 2 preds: ^bb8, ^bb9
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_0 : memref<4608xbf16>, 3072, 768) {bd_id = 2 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb9
    ^bb10:  // pred: ^bb8
      %5 = aie.dma_start(S2MM, 5, ^bb11, ^bb12)
    ^bb11:  // 2 preds: ^bb10, ^bb11
      aie.use_lock(%out2_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out2_buff_0 : memref<4608xbf16>, 3840, 768) {bd_id = 26 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%out2_cons_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb12:  // pred: ^bb10
      %6 = aie.dma_start(MM2S, 0, ^bb13, ^bb14)
    ^bb13:  // 2 preds: ^bb12, ^bb13
      aie.use_lock(%out2_cons_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%out2_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 3 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%out2_prod_lock, Release, 6)
      aie.next_bd ^bb13
    ^bb14:  // pred: ^bb12
      aie.end
    }
    aie.shim_dma_allocation @out1(S2MM, 0, 0)
    aie.shim_dma_allocation @out2(S2MM, 0, 3)
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

