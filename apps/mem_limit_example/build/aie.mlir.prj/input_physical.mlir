module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<2xbf16>
    memref.global "public" @out : memref<2xbf16>
    memref.global "public" @n_cons : memref<2xbf16>
    memref.global "public" @n : memref<2xbf16>
    memref.global "public" @m_cons : memref<2xbf16>
    memref.global "public" @m : memref<2xbf16>
    memref.global "public" @l_cons : memref<2xbf16>
    memref.global "public" @l : memref<2xbf16>
    memref.global "public" @w_cons : memref<2304xbf16>
    memref.global "public" @w : memref<2304xbf16>
    memref.global "public" @v_cons : memref<2304xbf16>
    memref.global "public" @v : memref<2304xbf16>
    memref.global "public" @u_cons : memref<2304xbf16>
    memref.global "public" @u : memref<2304xbf16>
    memref.global "public" @visC_cons : memref<2304xbf16>
    memref.global "public" @visC : memref<2304xbf16>
    memref.global "public" @visR_cons : memref<2304xbf16>
    memref.global "public" @visR : memref<2304xbf16>
    memref.global "public" @in3_cons : memref<6xbf16>
    memref.global "public" @in3 : memref<6xbf16>
    memref.global "public" @in2_cons : memref<6912xbf16>
    memref.global "public" @in2 : memref<6912xbf16>
    memref.global "public" @in1_cons : memref<4608xbf16>
    memref.global "public" @in1 : memref<4608xbf16>
    memref.global "public" @in0_cons : memref<2xbf16>
    memref.global "public" @in0 : memref<2xbf16>
    func.func private @vector_scale(memref<2304xbf16>, memref<2304xbf16>, memref<2xbf16>, i32)
    func.func private @passthrough(memref<2304xbf16>, memref<2304xbf16>, i32)
    func.func private @vector_add(memref<2304xbf16>, memref<2304xbf16>, memref<2304xbf16>, i32)
    func.func private @vector_mult(memref<2304xbf16>, memref<2304xbf16>, memref<2304xbf16>, i32)
    func.func private @mean(memref<2304xbf16>, memref<2xbf16>, i32, i32)
    func.func private @sin_float_1024(memref<2304xbf16>, memref<2304xbf16>, i32)
    func.func private @cos_float_1024(memref<2304xbf16>, memref<2304xbf16>, i32)
    func.func private @vector_sub(memref<2304xbf16>, memref<2304xbf16>, memref<2304xbf16>, i32)
    %shim_noc_tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %switchbox_0_4 = aie.switchbox(%tile_0_4) {
    }
    %tile_0_5 = aie.tile(0, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %switchbox_0_5 = aie.switchbox(%tile_0_5) {
    }
    %shim_noc_tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_1_1 = aie.tile(1, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_1_2 = aie.tile(1, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %switchbox_1_3 = aie.switchbox(%tile_1_3) {
    }
    %tile_1_4 = aie.tile(1, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %switchbox_1_4 = aie.switchbox(%tile_1_4) {
    }
    %tile_1_5 = aie.tile(1, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %switchbox_1_5 = aie.switchbox(%tile_1_5) {
    }
    %shim_noc_tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_2_1 = aie.tile(2, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %switchbox_2_3 = aie.switchbox(%tile_2_3) {
    }
    %tile_2_4 = aie.tile(2, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %switchbox_2_4 = aie.switchbox(%tile_2_4) {
    }
    %tile_2_5 = aie.tile(2, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %switchbox_2_5 = aie.switchbox(%tile_2_5) {
    }
    %shim_noc_tile_3_0 = aie.tile(3, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_3_1 = aie.tile(3, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_3_3 = aie.tile(3, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_3_4 = aie.tile(3, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_3_5 = aie.tile(3, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %out_cons_prod_lock_0 = aie.lock(%shim_noc_tile_2_0, 0) {init = 1 : i32, sym_name = "out_cons_prod_lock_0"}
    %out_cons_cons_lock_0 = aie.lock(%shim_noc_tile_2_0, 1) {init = 0 : i32, sym_name = "out_cons_cons_lock_0"}
    %out_buff_0 = aie.buffer(%tile_3_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<2xbf16> 
    %out_buff_1 = aie.buffer(%tile_3_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out_buff_1"} : memref<2xbf16> 
    %out_prod_lock_0 = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "out_prod_lock_0"}
    %out_cons_lock_0 = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "out_cons_lock_0"}
    %n_cons_buff_0 = aie.buffer(%tile_2_2) {address = 5632 : i32, mem_bank = 0 : i32, sym_name = "n_cons_buff_0"} : memref<2xbf16> 
    %n_cons_buff_1 = aie.buffer(%tile_2_2) {address = 20992 : i32, mem_bank = 1 : i32, sym_name = "n_cons_buff_1"} : memref<2xbf16> 
    %n_cons_prod_lock_0 = aie.lock(%tile_2_2, 2) {init = 2 : i32, sym_name = "n_cons_prod_lock_0"}
    %n_cons_cons_lock_0 = aie.lock(%tile_2_2, 3) {init = 0 : i32, sym_name = "n_cons_cons_lock_0"}
    %m_cons_buff_0 = aie.buffer(%tile_1_2) {address = 5632 : i32, mem_bank = 0 : i32, sym_name = "m_cons_buff_0"} : memref<2xbf16> 
    %m_cons_buff_1 = aie.buffer(%tile_1_2) {address = 20992 : i32, mem_bank = 1 : i32, sym_name = "m_cons_buff_1"} : memref<2xbf16> 
    %m_cons_prod_lock_0 = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "m_cons_prod_lock_0"}
    %m_cons_cons_lock_0 = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "m_cons_cons_lock_0"}
    %l_cons_buff_0 = aie.buffer(%tile_0_2) {address = 5632 : i32, mem_bank = 0 : i32, sym_name = "l_cons_buff_0"} : memref<2xbf16> 
    %l_cons_buff_1 = aie.buffer(%tile_0_2) {address = 20992 : i32, mem_bank = 1 : i32, sym_name = "l_cons_buff_1"} : memref<2xbf16> 
    %l_cons_prod_lock_0 = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "l_cons_prod_lock_0"}
    %l_cons_cons_lock_0 = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "l_cons_cons_lock_0"}
    %w_cons_buff_0 = aie.buffer(%tile_2_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "w_cons_buff_0"} : memref<2304xbf16> 
    %w_cons_buff_1 = aie.buffer(%tile_2_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "w_cons_buff_1"} : memref<2304xbf16> 
    %w_cons_buff_2 = aie.buffer(%tile_2_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "w_cons_buff_2"} : memref<2304xbf16> 
    %w_cons_buff_3 = aie.buffer(%tile_2_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "w_cons_buff_3"} : memref<2304xbf16> 
    %w_cons_prod_lock_0 = aie.lock(%tile_2_2, 0) {init = 4 : i32, sym_name = "w_cons_prod_lock_0"}
    %w_cons_cons_lock_0 = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "w_cons_cons_lock_0"}
    %v_cons_buff_0 = aie.buffer(%tile_1_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "v_cons_buff_0"} : memref<2304xbf16> 
    %v_cons_buff_1 = aie.buffer(%tile_1_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "v_cons_buff_1"} : memref<2304xbf16> 
    %v_cons_buff_2 = aie.buffer(%tile_1_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "v_cons_buff_2"} : memref<2304xbf16> 
    %v_cons_buff_3 = aie.buffer(%tile_1_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "v_cons_buff_3"} : memref<2304xbf16> 
    %v_cons_prod_lock_0 = aie.lock(%tile_1_2, 0) {init = 4 : i32, sym_name = "v_cons_prod_lock_0"}
    %v_cons_cons_lock_0 = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "v_cons_cons_lock_0"}
    %u_cons_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "u_cons_buff_0"} : memref<2304xbf16> 
    %u_cons_buff_1 = aie.buffer(%tile_0_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "u_cons_buff_1"} : memref<2304xbf16> 
    %u_cons_buff_2 = aie.buffer(%tile_0_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "u_cons_buff_2"} : memref<2304xbf16> 
    %u_cons_buff_3 = aie.buffer(%tile_0_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "u_cons_buff_3"} : memref<2304xbf16> 
    %u_cons_prod_lock_0 = aie.lock(%tile_0_2, 0) {init = 4 : i32, sym_name = "u_cons_prod_lock_0"}
    %u_cons_cons_lock_0 = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "u_cons_cons_lock_0"}
    %visC_cons_buff_0 = aie.buffer(%tile_3_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "visC_cons_buff_0"} : memref<2304xbf16> 
    %visC_cons_buff_1 = aie.buffer(%tile_3_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "visC_cons_buff_1"} : memref<2304xbf16> 
    %visC_cons_buff_2 = aie.buffer(%tile_3_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "visC_cons_buff_2"} : memref<2304xbf16> 
    %visC_cons_buff_3 = aie.buffer(%tile_3_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "visC_cons_buff_3"} : memref<2304xbf16> 
    %visC_cons_prod_lock_0 = aie.lock(%tile_3_5, 0) {init = 4 : i32, sym_name = "visC_cons_prod_lock_0"}
    %visC_cons_cons_lock_0 = aie.lock(%tile_3_5, 1) {init = 0 : i32, sym_name = "visC_cons_cons_lock_0"}
    %visR_cons_buff_0 = aie.buffer(%tile_3_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "visR_cons_buff_0"} : memref<2304xbf16> 
    %visR_cons_buff_1 = aie.buffer(%tile_3_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "visR_cons_buff_1"} : memref<2304xbf16> 
    %visR_cons_buff_2 = aie.buffer(%tile_3_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "visR_cons_buff_2"} : memref<2304xbf16> 
    %visR_cons_buff_3 = aie.buffer(%tile_3_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "visR_cons_buff_3"} : memref<2304xbf16> 
    %visR_cons_prod_lock_0 = aie.lock(%tile_3_4, 0) {init = 4 : i32, sym_name = "visR_cons_prod_lock_0"}
    %visR_cons_cons_lock_0 = aie.lock(%tile_3_4, 1) {init = 0 : i32, sym_name = "visR_cons_cons_lock_0"}
    %in3_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in3_cons_buff_0"} : memref<6xbf16> 
    %in3_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in3_cons_buff_1"} : memref<6xbf16> 
    %in3_cons_prod_lock_0 = aie.lock(%mem_tile_2_1, 0) {init = 2 : i32, sym_name = "in3_cons_prod_lock_0"}
    %in3_cons_cons_lock_0 = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "in3_cons_cons_lock_0"}
    %in3_cons_prod_lock_1 = aie.lock(%mem_tile_2_1, 2) {init = 2 : i32, sym_name = "in3_cons_prod_lock_1"}
    %in3_cons_cons_lock_1 = aie.lock(%mem_tile_2_1, 3) {init = 0 : i32, sym_name = "in3_cons_cons_lock_1"}
    %in3_cons_prod_lock_2 = aie.lock(%mem_tile_2_1, 4) {init = 2 : i32, sym_name = "in3_cons_prod_lock_2"}
    %in3_cons_cons_lock_2 = aie.lock(%mem_tile_2_1, 5) {init = 0 : i32, sym_name = "in3_cons_cons_lock_2"}
    %in3_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 2) {init = 1 : i32, sym_name = "in3_prod_lock_0"}
    %in3_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 3) {init = 0 : i32, sym_name = "in3_cons_lock_0"}
    %in2_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_0"} : memref<6912xbf16> 
    %in2_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in2_cons_buff_1"} : memref<6912xbf16> 
    %in2_cons_prod_lock_0 = aie.lock(%mem_tile_1_1, 0) {init = 2 : i32, sym_name = "in2_cons_prod_lock_0"}
    %in2_cons_cons_lock_0 = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock_0"}
    %in2_cons_prod_lock_1 = aie.lock(%mem_tile_1_1, 2) {init = 2 : i32, sym_name = "in2_cons_prod_lock_1"}
    %in2_cons_cons_lock_1 = aie.lock(%mem_tile_1_1, 3) {init = 0 : i32, sym_name = "in2_cons_cons_lock_1"}
    %in2_cons_prod_lock_2 = aie.lock(%mem_tile_1_1, 4) {init = 2 : i32, sym_name = "in2_cons_prod_lock_2"}
    %in2_cons_cons_lock_2 = aie.lock(%mem_tile_1_1, 5) {init = 0 : i32, sym_name = "in2_cons_cons_lock_2"}
    %in2_prod_lock_0 = aie.lock(%shim_noc_tile_1_0, 0) {init = 1 : i32, sym_name = "in2_prod_lock_0"}
    %in2_cons_lock_0 = aie.lock(%shim_noc_tile_1_0, 1) {init = 0 : i32, sym_name = "in2_cons_lock_0"}
    %in1_cons_buff_0 = aie.buffer(%mem_tile_3_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in1_cons_buff_0"} : memref<4608xbf16> 
    %in1_cons_buff_1 = aie.buffer(%mem_tile_3_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in1_cons_buff_1"} : memref<4608xbf16> 
    %in1_cons_prod_lock_0 = aie.lock(%mem_tile_3_1, 0) {init = 2 : i32, sym_name = "in1_cons_prod_lock_0"}
    %in1_cons_cons_lock_0 = aie.lock(%mem_tile_3_1, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock_0"}
    %in1_cons_prod_lock_1 = aie.lock(%mem_tile_3_1, 2) {init = 2 : i32, sym_name = "in1_cons_prod_lock_1"}
    %in1_cons_cons_lock_1 = aie.lock(%mem_tile_3_1, 3) {init = 0 : i32, sym_name = "in1_cons_cons_lock_1"}
    %in1_prod_lock_0 = aie.lock(%shim_noc_tile_3_0, 0) {init = 1 : i32, sym_name = "in1_prod_lock_0"}
    %in1_cons_lock_0 = aie.lock(%shim_noc_tile_3_0, 1) {init = 0 : i32, sym_name = "in1_cons_lock_0"}
    %in0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_0"} : memref<2xbf16> 
    %in0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in0_cons_buff_1"} : memref<2xbf16> 
    %in0_cons_prod_lock_0 = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "in0_cons_prod_lock_0"}
    %in0_cons_cons_lock_0 = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "in0_cons_cons_lock_0"}
    %in0_prod_lock_0 = aie.lock(%shim_noc_tile_0_0, 0) {init = 1 : i32, sym_name = "in0_prod_lock_0"}
    %in0_cons_lock_0 = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "in0_cons_lock_0"}
    %switchbox_0_0 = aie.switchbox(%shim_noc_tile_0_0) {
      aie.connect<South : 3, North : 1>
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
      aie.connect<South : 1, North : 1>
    }
    %switchbox_0_2 = aie.switchbox(%tile_0_2) {
      aie.connect<South : 1, North : 0>
      aie.connect<East : 3, DMA : 0>
      aie.connect<East : 2, DMA : 1>
    }
    %switchbox_0_3 = aie.switchbox(%tile_0_3) {
      aie.connect<South : 0, DMA : 0>
    }
    %switchbox_3_0 = aie.switchbox(%shim_noc_tile_3_0) {
      aie.connect<South : 3, North : 0>
      aie.connect<North : 1, West : 1>
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
      aie.connect<DMA : 0, North : 1>
      aie.connect<DMA : 1, North : 5>
      aie.connect<North : 1, South : 1>
    }
    %switchbox_1_0 = aie.switchbox(%shim_noc_tile_1_0) {
      aie.connect<South : 3, North : 1>
      aie.connect<South : 7, East : 3>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %shim_mux_1_0 = aie.shim_mux(%shim_noc_tile_1_0) {
      aie.connect<DMA : 0, North : 3>
      aie.connect<DMA : 1, North : 7>
    }
    %switchbox_1_1 = aie.switchbox(%mem_tile_1_1) {
      aie.connect<South : 1, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<DMA : 1, North : 5>
      aie.connect<DMA : 2, North : 0>
    }
    %switchbox_2_0 = aie.switchbox(%shim_noc_tile_2_0) {
      aie.connect<West : 3, North : 2>
      aie.connect<East : 1, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %switchbox_2_1 = aie.switchbox(%mem_tile_2_1) {
      aie.connect<South : 2, DMA : 0>
      aie.connect<DMA : 0, North : 1>
      aie.connect<DMA : 1, North : 5>
      aie.connect<DMA : 2, North : 0>
    }
    %switchbox_3_2 = aie.switchbox(%tile_3_2) {
      aie.connect<South : 1, North : 4>
      aie.connect<South : 5, North : 1>
      aie.connect<DMA : 0, South : 1>
    }
    %switchbox_3_3 = aie.switchbox(%tile_3_3) {
      aie.connect<South : 4, North : 3>
      aie.connect<South : 1, North : 1>
    }
    %switchbox_3_4 = aie.switchbox(%tile_3_4) {
      aie.connect<South : 3, DMA : 0>
      aie.connect<South : 1, North : 5>
    }
    %switchbox_3_5 = aie.switchbox(%tile_3_5) {
      aie.connect<South : 5, DMA : 0>
    }
    %switchbox_1_2 = aie.switchbox(%tile_1_2) {
      aie.connect<South : 1, West : 3>
      aie.connect<South : 5, DMA : 0>
      aie.connect<South : 0, East : 1>
      aie.connect<East : 3, West : 2>
      aie.connect<East : 2, DMA : 1>
    }
    %switchbox_2_2 = aie.switchbox(%tile_2_2) {
      aie.connect<West : 1, DMA : 0>
      aie.connect<South : 1, West : 3>
      aie.connect<South : 5, West : 2>
      aie.connect<South : 0, DMA : 1>
    }
    %shim_mux_2_0 = aie.shim_mux(%shim_noc_tile_2_0) {
      aie.connect<North : 2, DMA : 0>
    }
    %core_0_2 = aie.core(%tile_0_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775804 = arith.constant 9223372036854775804 : index
      %c4 = arith.constant 4 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775804 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%l_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%u_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%u_cons_prod_lock_0, Release, 4)
      aie.use_lock(%l_cons_prod_lock_0, Release, 1)
      aie.use_lock(%l_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%u_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%u_cons_prod_lock_0, Release, 4)
      aie.use_lock(%l_cons_prod_lock_0, Release, 1)
      aie.use_lock(%l_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%u_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%u_cons_prod_lock_0, Release, 4)
      aie.use_lock(%l_cons_prod_lock_0, Release, 1)
      aie.use_lock(%l_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%u_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%u_cons_prod_lock_0, Release, 4)
      aie.use_lock(%l_cons_prod_lock_0, Release, 1)
      %2 = arith.addi %0, %c4 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      %c3 = arith.constant 3 : index
      aie.use_lock(%l_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%u_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%u_cons_prod_lock_0, Release, 4)
      aie.use_lock(%l_cons_prod_lock_0, Release, 1)
      aie.use_lock(%l_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%u_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%u_cons_prod_lock_0, Release, 4)
      aie.use_lock(%l_cons_prod_lock_0, Release, 1)
      aie.use_lock(%l_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%u_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%u_cons_prod_lock_0, Release, 4)
      aie.use_lock(%l_cons_prod_lock_0, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_1_2 = aie.core(%tile_1_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775804 = arith.constant 9223372036854775804 : index
      %c4 = arith.constant 4 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775804 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%m_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%v_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%v_cons_prod_lock_0, Release, 4)
      aie.use_lock(%m_cons_prod_lock_0, Release, 1)
      aie.use_lock(%m_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%v_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%v_cons_prod_lock_0, Release, 4)
      aie.use_lock(%m_cons_prod_lock_0, Release, 1)
      aie.use_lock(%m_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%v_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%v_cons_prod_lock_0, Release, 4)
      aie.use_lock(%m_cons_prod_lock_0, Release, 1)
      aie.use_lock(%m_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%v_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%v_cons_prod_lock_0, Release, 4)
      aie.use_lock(%m_cons_prod_lock_0, Release, 1)
      %2 = arith.addi %0, %c4 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      %c3 = arith.constant 3 : index
      aie.use_lock(%m_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%v_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%v_cons_prod_lock_0, Release, 4)
      aie.use_lock(%m_cons_prod_lock_0, Release, 1)
      aie.use_lock(%m_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%v_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%v_cons_prod_lock_0, Release, 4)
      aie.use_lock(%m_cons_prod_lock_0, Release, 1)
      aie.use_lock(%m_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%v_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%v_cons_prod_lock_0, Release, 4)
      aie.use_lock(%m_cons_prod_lock_0, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775804 = arith.constant 9223372036854775804 : index
      %c4 = arith.constant 4 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775804 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%n_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%w_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%w_cons_prod_lock_0, Release, 4)
      aie.use_lock(%n_cons_prod_lock_0, Release, 1)
      aie.use_lock(%n_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%w_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%w_cons_prod_lock_0, Release, 4)
      aie.use_lock(%n_cons_prod_lock_0, Release, 1)
      aie.use_lock(%n_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%w_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%w_cons_prod_lock_0, Release, 4)
      aie.use_lock(%n_cons_prod_lock_0, Release, 1)
      aie.use_lock(%n_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%w_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%w_cons_prod_lock_0, Release, 4)
      aie.use_lock(%n_cons_prod_lock_0, Release, 1)
      %2 = arith.addi %0, %c4 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      %c3 = arith.constant 3 : index
      aie.use_lock(%n_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%w_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%w_cons_prod_lock_0, Release, 4)
      aie.use_lock(%n_cons_prod_lock_0, Release, 1)
      aie.use_lock(%n_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%w_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%w_cons_prod_lock_0, Release, 4)
      aie.use_lock(%n_cons_prod_lock_0, Release, 1)
      aie.use_lock(%n_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%w_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%w_cons_prod_lock_0, Release, 4)
      aie.use_lock(%n_cons_prod_lock_0, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775804 = arith.constant 9223372036854775804 : index
      %c4 = arith.constant 4 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775804 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%visC_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%visC_cons_prod_lock_0, Release, 4)
      aie.use_lock(%visC_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%visC_cons_prod_lock_0, Release, 4)
      aie.use_lock(%visC_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%visC_cons_prod_lock_0, Release, 4)
      aie.use_lock(%visC_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%visC_cons_prod_lock_0, Release, 4)
      %2 = arith.addi %0, %c4 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      %c3 = arith.constant 3 : index
      aie.use_lock(%visC_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%visC_cons_prod_lock_0, Release, 4)
      aie.use_lock(%visC_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%visC_cons_prod_lock_0, Release, 4)
      aie.use_lock(%visC_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%visC_cons_prod_lock_0, Release, 4)
      aie.end
    } {link_with = "vector_mult.o"}
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775804 = arith.constant 9223372036854775804 : index
      %c4 = arith.constant 4 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775804 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%visR_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%visR_cons_prod_lock_0, Release, 4)
      aie.use_lock(%visR_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%visR_cons_prod_lock_0, Release, 4)
      aie.use_lock(%visR_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%visR_cons_prod_lock_0, Release, 4)
      aie.use_lock(%visR_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%visR_cons_prod_lock_0, Release, 4)
      %2 = arith.addi %0, %c4 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      %c3 = arith.constant 3 : index
      aie.use_lock(%visR_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%visR_cons_prod_lock_0, Release, 4)
      aie.use_lock(%visR_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%visR_cons_prod_lock_0, Release, 4)
      aie.use_lock(%visR_cons_cons_lock_0, AcquireGreaterEqual, 4)
      aie.use_lock(%visR_cons_prod_lock_0, Release, 4)
      aie.end
    } {link_with = "vector_mult.o"}
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb2
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb3
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out_prod_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%out_cons_lock_0, Release, 1)
      aie.use_lock(%out_prod_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%out_cons_lock_0, Release, 1)
      %2 = arith.addi %0, %c2 : index
      cf.br ^bb1(%2 : index)
    ^bb3:  // pred: ^bb1
      aie.use_lock(%out_prod_lock_0, AcquireGreaterEqual, 1)
      aie.use_lock(%out_cons_lock_0, Release, 1)
      aie.end
    } {link_with = "mean.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<2xbf16>, %arg1: memref<9216xbf16>, %arg2: memref<27648xbf16>, %arg3: memref<2xbf16>, %arg4: memref<9216xbf16>) {
      aiex.npu.dma_memcpy_nd(%arg0[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<2xbf16>
      aiex.npu.dma_memcpy_nd(%arg1[0, 0, 0, 0][1, 1, 1, 18432][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<9216xbf16>
      aiex.npu.dma_memcpy_nd(%arg2[0, 0, 0, 0][1, 1, 1, 27648][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<27648xbf16>
      aiex.npu.dma_memcpy_nd(%arg3[0, 0, 0, 0][1, 1, 1, 196608][0, 0, 0, 1]) {id = 4 : i64, metadata = @in3} : memref<2xbf16>
      aiex.npu.dma_memcpy_nd(%arg4[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<9216xbf16>
      aiex.npu.dma_wait {symbol = @out}
    }
    aie.shim_dma_allocation @in0(MM2S, 0, 0)
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    aie.shim_dma_allocation @in1(MM2S, 0, 3)
    %memtile_dma_3_1 = aie.memtile_dma(%mem_tile_3_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb5)
    ^bb1:  // 2 preds: ^bb0, ^bb4
      aie.use_lock(%in1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 0, 2304) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in1_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 2304, 2304) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in1_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%in1_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<4608xbf16>, 0, 2304) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in1_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in1_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<4608xbf16>, 2304, 2304) {bd_id = 3 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in1_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb1
    ^bb5:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb6, ^bb8)
    ^bb6:  // 2 preds: ^bb5, ^bb7
      aie.use_lock(%in1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 0, 2304) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%in1_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<4608xbf16>, 0, 2304) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in1_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb6
    ^bb8:  // pred: ^bb5
      %2 = aie.dma_start(MM2S, 1, ^bb9, ^bb11)
    ^bb9:  // 2 preds: ^bb8, ^bb10
      aie.use_lock(%in1_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4608xbf16>, 2304, 2304) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in1_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb10
    ^bb10:  // pred: ^bb9
      aie.use_lock(%in1_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<4608xbf16>, 2304, 2304) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in1_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb9
    ^bb11:  // pred: ^bb8
      aie.end
    }
    aie.shim_dma_allocation @in2(MM2S, 0, 1)
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7)
    ^bb1:  // 2 preds: ^bb0, ^bb6
      aie.use_lock(%in2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<6912xbf16>, 0, 2304) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in2_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<6912xbf16>, 2304, 2304) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in2_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%in2_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<6912xbf16>, 4608, 2304) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in2_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in2_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<6912xbf16>, 0, 2304) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in2_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in2_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<6912xbf16>, 2304, 2304) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in2_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%in2_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<6912xbf16>, 4608, 2304) {bd_id = 5 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in2_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb1
    ^bb7:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb8, ^bb10)
    ^bb8:  // 2 preds: ^bb7, ^bb9
      aie.use_lock(%in2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<6912xbf16>, 0, 2304) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%in2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%in2_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<6912xbf16>, 0, 2304) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%in2_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb10:  // pred: ^bb7
      %2 = aie.dma_start(MM2S, 1, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%in2_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<6912xbf16>, 2304, 2304) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in2_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%in2_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<6912xbf16>, 2304, 2304) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in2_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      %3 = aie.dma_start(MM2S, 2, ^bb14, ^bb16)
    ^bb14:  // 2 preds: ^bb13, ^bb15
      aie.use_lock(%in2_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<6912xbf16>, 4608, 2304) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%in2_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb15
    ^bb15:  // pred: ^bb14
      aie.use_lock(%in2_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<6912xbf16>, 4608, 2304) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%in2_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb14
    ^bb16:  // pred: ^bb13
      aie.end
    }
    aie.shim_dma_allocation @in3(MM2S, 1, 1)
    %memtile_dma_2_1 = aie.memtile_dma(%mem_tile_2_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb7)
    ^bb1:  // 2 preds: ^bb0, ^bb6
      aie.use_lock(%in3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<6xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in3_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<6xbf16>, 2, 2) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in3_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%in3_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<6xbf16>, 4, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in3_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%in3_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_1 : memref<6xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in3_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in3_cons_prod_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_1 : memref<6xbf16>, 2, 2) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in3_cons_cons_lock_1, Release, 1)
      aie.next_bd ^bb6
    ^bb6:  // pred: ^bb5
      aie.use_lock(%in3_cons_prod_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_1 : memref<6xbf16>, 4, 2) {bd_id = 5 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in3_cons_cons_lock_2, Release, 1)
      aie.next_bd ^bb1
    ^bb7:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb8, ^bb10)
    ^bb8:  // 2 preds: ^bb7, ^bb9
      aie.use_lock(%in3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<6xbf16>, 0, 2) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%in3_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb9
    ^bb9:  // pred: ^bb8
      aie.use_lock(%in3_cons_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_1 : memref<6xbf16>, 0, 2) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%in3_cons_prod_lock_0, Release, 1)
      aie.next_bd ^bb8
    ^bb10:  // pred: ^bb7
      %2 = aie.dma_start(MM2S, 1, ^bb11, ^bb13)
    ^bb11:  // 2 preds: ^bb10, ^bb12
      aie.use_lock(%in3_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<6xbf16>, 2, 2) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in3_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb12
    ^bb12:  // pred: ^bb11
      aie.use_lock(%in3_cons_cons_lock_1, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_1 : memref<6xbf16>, 2, 2) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in3_cons_prod_lock_1, Release, 1)
      aie.next_bd ^bb11
    ^bb13:  // pred: ^bb10
      %3 = aie.dma_start(MM2S, 2, ^bb14, ^bb16)
    ^bb14:  // 2 preds: ^bb13, ^bb15
      aie.use_lock(%in3_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<6xbf16>, 4, 2) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%in3_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb15
    ^bb15:  // pred: ^bb14
      aie.use_lock(%in3_cons_cons_lock_2, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_1 : memref<6xbf16>, 4, 2) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%in3_cons_prod_lock_2, Release, 1)
      aie.next_bd ^bb14
    ^bb16:  // pred: ^bb13
      aie.end
    }
    %mem_3_4 = aie.mem(%tile_3_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb5)
    ^bb1:  // 2 preds: ^bb0, ^bb4
      aie.use_lock(%visR_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%visR_cons_buff_0 : memref<2304xbf16>, 0, 2304) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%visR_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%visR_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%visR_cons_buff_1 : memref<2304xbf16>, 0, 2304) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%visR_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%visR_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%visR_cons_buff_2 : memref<2304xbf16>, 0, 2304) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%visR_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%visR_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%visR_cons_buff_3 : memref<2304xbf16>, 0, 2304) {bd_id = 3 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%visR_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb5:  // pred: ^bb0
      aie.end
    }
    %mem_3_5 = aie.mem(%tile_3_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb5)
    ^bb1:  // 2 preds: ^bb0, ^bb4
      aie.use_lock(%visC_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%visC_cons_buff_0 : memref<2304xbf16>, 0, 2304) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%visC_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%visC_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%visC_cons_buff_1 : memref<2304xbf16>, 0, 2304) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%visC_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%visC_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%visC_cons_buff_2 : memref<2304xbf16>, 0, 2304) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%visC_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%visC_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%visC_cons_buff_3 : memref<2304xbf16>, 0, 2304) {bd_id = 3 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%visC_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb5:  // pred: ^bb0
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb5)
    ^bb1:  // 2 preds: ^bb0, ^bb4
      aie.use_lock(%u_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%u_cons_buff_0 : memref<2304xbf16>, 0, 2304) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%u_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%u_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%u_cons_buff_1 : memref<2304xbf16>, 0, 2304) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%u_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%u_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%u_cons_buff_2 : memref<2304xbf16>, 0, 2304) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%u_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%u_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%u_cons_buff_3 : memref<2304xbf16>, 0, 2304) {bd_id = 3 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%u_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb5:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb6, ^bb8)
    ^bb6:  // 2 preds: ^bb5, ^bb7
      aie.use_lock(%l_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%l_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%l_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%l_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%l_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%l_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb6
    ^bb8:  // pred: ^bb5
      aie.end
    }
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb5)
    ^bb1:  // 2 preds: ^bb0, ^bb4
      aie.use_lock(%v_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%v_cons_buff_0 : memref<2304xbf16>, 0, 2304) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%v_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%v_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%v_cons_buff_1 : memref<2304xbf16>, 0, 2304) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%v_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%v_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%v_cons_buff_2 : memref<2304xbf16>, 0, 2304) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%v_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%v_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%v_cons_buff_3 : memref<2304xbf16>, 0, 2304) {bd_id = 3 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%v_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb5:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb6, ^bb8)
    ^bb6:  // 2 preds: ^bb5, ^bb7
      aie.use_lock(%m_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%m_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%m_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%m_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%m_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%m_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb6
    ^bb8:  // pred: ^bb5
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb5)
    ^bb1:  // 2 preds: ^bb0, ^bb4
      aie.use_lock(%w_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%w_cons_buff_0 : memref<2304xbf16>, 0, 2304) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%w_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%w_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%w_cons_buff_1 : memref<2304xbf16>, 0, 2304) {bd_id = 1 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%w_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb3
    ^bb3:  // pred: ^bb2
      aie.use_lock(%w_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%w_cons_buff_2 : memref<2304xbf16>, 0, 2304) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%w_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb4
    ^bb4:  // pred: ^bb3
      aie.use_lock(%w_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%w_cons_buff_3 : memref<2304xbf16>, 0, 2304) {bd_id = 3 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%w_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb1
    ^bb5:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb6, ^bb8)
    ^bb6:  // 2 preds: ^bb5, ^bb7
      aie.use_lock(%n_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%n_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%n_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb7
    ^bb7:  // pred: ^bb6
      aie.use_lock(%n_cons_prod_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%n_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%n_cons_cons_lock_0, Release, 1)
      aie.next_bd ^bb6
    ^bb8:  // pred: ^bb5
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(MM2S, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%out_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%out_prod_lock_0, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%out_cons_lock_0, AcquireGreaterEqual, 1)
      aie.dma_bd(%out_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
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
    aie.wire(%shim_mux_2_0 : North, %switchbox_2_0 : South)
    aie.wire(%shim_noc_tile_2_0 : DMA, %shim_mux_2_0 : DMA)
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

