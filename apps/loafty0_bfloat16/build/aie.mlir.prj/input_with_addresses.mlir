module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<8xbf16>
    memref.global "public" @out : memref<8xbf16>
    memref.global "public" @sub2mean : memref<4608xbf16>
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
    memref.global "public" @in0_0_cons : memref<24xbf16>
    memref.global "public" @in0_1_cons : memref<24xbf16>
    memref.global "public" @in0_2_cons : memref<24xbf16>
    memref.global "public" @in0_3_cons : memref<24xbf16>
    memref.global "public" @in0_4_cons : memref<24xbf16>
    memref.global "public" @in0_5_cons : memref<24xbf16>
    memref.global "public" @in0 : memref<24xbf16>
    func.func private @passthrough(memref<4610xbf16>, memref<4610xbf16>, i32)
    func.func private @mean(memref<4608xbf16>, memref<8xbf16>, i32, i32)
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
    %out_buff_0 = aie.buffer(%tile_2_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<8xbf16> 
    %out_buff_1 = aie.buffer(%tile_2_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out_buff_1"} : memref<8xbf16> 
    %out_prod_lock = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "out_prod_lock"}
    %out_cons_lock = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "out_cons_lock"}
    %sub2mean_buff_0 = aie.buffer(%tile_1_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "sub2mean_buff_0"} : memref<4608xbf16> 
    %sub2mean_buff_1 = aie.buffer(%tile_1_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "sub2mean_buff_1"} : memref<4608xbf16> 
    %sub2mean_prod_lock = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "sub2mean_prod_lock"}
    %sub2mean_cons_lock = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "sub2mean_cons_lock"}
    %of_in_mainB4_cons_buff_0 = aie.buffer(%tile_3_3) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB4_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainB4_cons_buff_1 = aie.buffer(%tile_3_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB4_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainB4_cons_prod_lock = aie.lock(%tile_3_3, 2) {init = 2 : i32, sym_name = "of_in_mainB4_cons_prod_lock"}
    %of_in_mainB4_cons_cons_lock = aie.lock(%tile_3_3, 3) {init = 0 : i32, sym_name = "of_in_mainB4_cons_cons_lock"}
    %of_in_mainA4_cons_buff_0 = aie.buffer(%tile_0_3) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA4_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainA4_cons_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA4_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainA4_cons_prod_lock = aie.lock(%tile_0_3, 2) {init = 2 : i32, sym_name = "of_in_mainA4_cons_prod_lock"}
    %of_in_mainA4_cons_cons_lock = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "of_in_mainA4_cons_cons_lock"}
    %of_in_mainB3_cons_buff_0 = aie.buffer(%tile_3_4) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB3_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainB3_cons_buff_1 = aie.buffer(%tile_3_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB3_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainB3_cons_prod_lock = aie.lock(%tile_3_4, 2) {init = 2 : i32, sym_name = "of_in_mainB3_cons_prod_lock"}
    %of_in_mainB3_cons_cons_lock = aie.lock(%tile_3_4, 3) {init = 0 : i32, sym_name = "of_in_mainB3_cons_cons_lock"}
    %of_in_mainA3_cons_buff_0 = aie.buffer(%tile_0_4) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA3_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainA3_cons_buff_1 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainA3_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainA3_cons_prod_lock = aie.lock(%tile_0_4, 2) {init = 2 : i32, sym_name = "of_in_mainA3_cons_prod_lock"}
    %of_in_mainA3_cons_cons_lock = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "of_in_mainA3_cons_cons_lock"}
    %of_in_mainB2_cons_buff_0 = aie.buffer(%tile_3_5) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainB2_cons_buff_0"} : memref<4610xbf16> 
    %of_in_mainB2_cons_buff_1 = aie.buffer(%tile_3_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "of_in_mainB2_cons_buff_1"} : memref<4610xbf16> 
    %of_in_mainB2_cons_prod_lock = aie.lock(%tile_3_5, 2) {init = 2 : i32, sym_name = "of_in_mainB2_cons_prod_lock"}
    %of_in_mainB2_cons_cons_lock = aie.lock(%tile_3_5, 3) {init = 0 : i32, sym_name = "of_in_mainB2_cons_cons_lock"}
    %of_in_mainA2_cons_buff_0 = aie.buffer(%tile_0_5) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "of_in_mainA2_cons_buff_0"} : memref<4610xbf16> 
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
    %in0_0_cons_buff_0 = aie.buffer(%tile_0_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_0_cons_buff_0"} : memref<24xbf16> 
    %in0_0_cons_buff_1 = aie.buffer(%tile_0_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_0_cons_buff_1"} : memref<24xbf16> 
    %in0_0_cons_prod_lock = aie.lock(%tile_0_5, 0) {init = 2 : i32, sym_name = "in0_0_cons_prod_lock"}
    %in0_0_cons_cons_lock = aie.lock(%tile_0_5, 1) {init = 0 : i32, sym_name = "in0_0_cons_cons_lock"}
    %in0_1_cons_buff_0 = aie.buffer(%tile_0_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_1_cons_buff_0"} : memref<24xbf16> 
    %in0_1_cons_buff_1 = aie.buffer(%tile_0_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_1_cons_buff_1"} : memref<24xbf16> 
    %in0_1_cons_prod_lock = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "in0_1_cons_prod_lock"}
    %in0_1_cons_cons_lock = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "in0_1_cons_cons_lock"}
    %in0_2_cons_buff_0 = aie.buffer(%tile_0_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_2_cons_buff_0"} : memref<24xbf16> 
    %in0_2_cons_buff_1 = aie.buffer(%tile_0_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_2_cons_buff_1"} : memref<24xbf16> 
    %in0_2_cons_prod_lock = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "in0_2_cons_prod_lock"}
    %in0_2_cons_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "in0_2_cons_cons_lock"}
    %in0_3_cons_buff_0 = aie.buffer(%tile_3_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_3_cons_buff_0"} : memref<24xbf16> 
    %in0_3_cons_buff_1 = aie.buffer(%tile_3_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_3_cons_buff_1"} : memref<24xbf16> 
    %in0_3_cons_prod_lock = aie.lock(%tile_3_5, 0) {init = 2 : i32, sym_name = "in0_3_cons_prod_lock"}
    %in0_3_cons_cons_lock = aie.lock(%tile_3_5, 1) {init = 0 : i32, sym_name = "in0_3_cons_cons_lock"}
    %in0_4_cons_buff_0 = aie.buffer(%tile_3_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_4_cons_buff_0"} : memref<24xbf16> 
    %in0_4_cons_buff_1 = aie.buffer(%tile_3_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_4_cons_buff_1"} : memref<24xbf16> 
    %in0_4_cons_prod_lock = aie.lock(%tile_3_4, 0) {init = 2 : i32, sym_name = "in0_4_cons_prod_lock"}
    %in0_4_cons_cons_lock = aie.lock(%tile_3_4, 1) {init = 0 : i32, sym_name = "in0_4_cons_cons_lock"}
    %in0_5_cons_buff_0 = aie.buffer(%tile_3_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "in0_5_cons_buff_0"} : memref<24xbf16> 
    %in0_5_cons_buff_1 = aie.buffer(%tile_3_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "in0_5_cons_buff_1"} : memref<24xbf16> 
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
    aie.flow(%tile_2_2, DMA : 0, %shim_noc_tile_2_0, DMA : 0)
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
      aie.use_lock(%sub2mean_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%sub2mean_cons_lock, Release, 1)
      aie.use_lock(%sub2mean_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%sub2mean_cons_lock, Release, 1)
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
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c0_i32 = arith.constant 0 : i32
      %c288_i32 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_0, %out_buff_0, %c0_i32, %c288_i32) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c1_i32 = arith.constant 1 : i32
      %c288_i32_2 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_1, %out_buff_0, %c1_i32, %c288_i32_2) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c2_i32 = arith.constant 2 : i32
      %c288_i32_3 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_0, %out_buff_0, %c2_i32, %c288_i32_3) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c3_i32 = arith.constant 3 : i32
      %c288_i32_4 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_1, %out_buff_0, %c3_i32, %c288_i32_4) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4_i32 = arith.constant 4 : i32
      %c288_i32_5 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_0, %out_buff_0, %c4_i32, %c288_i32_5) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c5_i32 = arith.constant 5 : i32
      %c288_i32_6 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_1, %out_buff_0, %c5_i32, %c288_i32_6) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c6_i32 = arith.constant 6 : i32
      %c288_i32_7 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_0, %out_buff_0, %c6_i32, %c288_i32_7) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c7_i32 = arith.constant 7 : i32
      %c288_i32_8 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_1, %out_buff_0, %c7_i32, %c288_i32_8) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%out_cons_lock, Release, 1)
      aie.use_lock(%out_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c0_i32_9 = arith.constant 0 : i32
      %c288_i32_10 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_0, %out_buff_1, %c0_i32_9, %c288_i32_10) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c1_i32_11 = arith.constant 1 : i32
      %c288_i32_12 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_1, %out_buff_1, %c1_i32_11, %c288_i32_12) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c2_i32_13 = arith.constant 2 : i32
      %c288_i32_14 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_0, %out_buff_1, %c2_i32_13, %c288_i32_14) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c3_i32_15 = arith.constant 3 : i32
      %c288_i32_16 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_1, %out_buff_1, %c3_i32_15, %c288_i32_16) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c4_i32_17 = arith.constant 4 : i32
      %c288_i32_18 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_0, %out_buff_1, %c4_i32_17, %c288_i32_18) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c5_i32_19 = arith.constant 5 : i32
      %c288_i32_20 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_1, %out_buff_1, %c5_i32_19, %c288_i32_20) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c6_i32_21 = arith.constant 6 : i32
      %c288_i32_22 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_0, %out_buff_1, %c6_i32_21, %c288_i32_22) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
      aie.use_lock(%sub2mean_cons_lock, AcquireGreaterEqual, 1)
      %c7_i32_23 = arith.constant 7 : i32
      %c288_i32_24 = arith.constant 288 : i32
      func.call @mean(%sub2mean_buff_1, %out_buff_1, %c7_i32_23, %c288_i32_24) : (memref<4608xbf16>, memref<8xbf16>, i32, i32) -> ()
      aie.use_lock(%sub2mean_prod_lock, Release, 1)
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
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 49152][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 23050][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 23050][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<23050xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg3[0, 0, 0, 0][1, 1, 1, 16384][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<23050xbf16>
      aiex.npu.dma_wait {symbol = @out}
    }
    aie.shim_dma_allocation @in0(MM2S, 0, 1)
    %mem_0_5 = aie.mem(%tile_0_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_0 : memref<24xbf16>, 0, 24) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_0_cons_buff_1 : memref<24xbf16>, 0, 24) {bd_id = 1 : i32, next_bd_id = 0 : i32}
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
      aie.dma_bd(%in0_1_cons_buff_0 : memref<24xbf16>, 0, 24) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_1_cons_buff_1 : memref<24xbf16>, 0, 24) {bd_id = 1 : i32, next_bd_id = 0 : i32}
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
      aie.end
    }
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_0 : memref<24xbf16>, 0, 24) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_2_cons_buff_1 : memref<24xbf16>, 0, 24) {bd_id = 1 : i32, next_bd_id = 0 : i32}
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
      aie.end
    }
    %mem_3_5 = aie.mem(%tile_3_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_0 : memref<24xbf16>, 0, 24) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_3_cons_buff_1 : memref<24xbf16>, 0, 24) {bd_id = 1 : i32, next_bd_id = 0 : i32}
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
      aie.dma_bd(%in0_4_cons_buff_0 : memref<24xbf16>, 0, 24) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_4_cons_buff_1 : memref<24xbf16>, 0, 24) {bd_id = 1 : i32, next_bd_id = 0 : i32}
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
      aie.end
    }
    %mem_3_3 = aie.mem(%tile_3_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_0 : memref<24xbf16>, 0, 24) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_5_cons_buff_1 : memref<24xbf16>, 0, 24) {bd_id = 1 : i32, next_bd_id = 0 : i32}
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
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_0 : memref<8xbf16>, 0, 8) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%out_prod_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_1 : memref<8xbf16>, 0, 8) {bd_id = 1 : i32, next_bd_id = 0 : i32}
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
