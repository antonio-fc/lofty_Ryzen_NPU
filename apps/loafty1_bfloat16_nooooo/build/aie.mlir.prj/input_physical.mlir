module {
  aie.device(npu1_4col) {
    %shim_noc_tile_3_0 = aie.tile(3, 0)
    %switchbox_3_0 = aie.switchbox(%shim_noc_tile_3_0) {
    }
    %shim_noc_tile_2_0 = aie.tile(2, 0)
    memref.global "public" @outC_cons : memref<4608xbf16>
    memref.global "public" @outC : memref<4608xbf16>
    memref.global "public" @memC5_cons : memref<768xbf16>
    memref.global "public" @memC5 : memref<768xbf16>
    memref.global "public" @memC4_cons : memref<768xbf16>
    memref.global "public" @memC4 : memref<768xbf16>
    memref.global "public" @memC3_cons : memref<768xbf16>
    memref.global "public" @memC3 : memref<768xbf16>
    memref.global "public" @memC2_cons : memref<768xbf16>
    memref.global "public" @memC2 : memref<768xbf16>
    memref.global "public" @memC1_cons : memref<768xbf16>
    memref.global "public" @memC1 : memref<768xbf16>
    memref.global "public" @memC0_cons : memref<768xbf16>
    memref.global "public" @memC0 : memref<768xbf16>
    memref.global "public" @memA5_cons : memref<768xbf16>
    memref.global "public" @memA5 : memref<768xbf16>
    memref.global "public" @memA4_cons : memref<768xbf16>
    memref.global "public" @memA4 : memref<768xbf16>
    memref.global "public" @memA3_cons : memref<768xbf16>
    memref.global "public" @memA3 : memref<768xbf16>
    memref.global "public" @memA2_cons : memref<768xbf16>
    memref.global "public" @memA2 : memref<768xbf16>
    memref.global "public" @memA1_cons : memref<768xbf16>
    memref.global "public" @memA1 : memref<768xbf16>
    memref.global "public" @memA0_cons : memref<768xbf16>
    memref.global "public" @memA0 : memref<768xbf16>
    memref.global "public" @inA_cons : memref<4608xbf16>
    memref.global "public" @inA : memref<4608xbf16>
    func.func private @passthrough(memref<768xbf16>, memref<768xbf16>, bf16)
    %shim_noc_tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %shim_noc_tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %mem_tile_1_1 = aie.tile(1, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_2_4 = aie.tile(2, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_3_3 = aie.tile(3, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_3_4 = aie.tile(3, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %outC_cons_prod_lock = aie.lock(%shim_noc_tile_1_0, 0) {init = 1 : i32, sym_name = "outC_cons_prod_lock"}
    %outC_cons_cons_lock = aie.lock(%shim_noc_tile_1_0, 1) {init = 0 : i32, sym_name = "outC_cons_cons_lock"}
    %outC_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "outC_buff_0"} : memref<4608xbf16> 
    %outC_buff_1 = aie.buffer(%mem_tile_1_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "outC_buff_1"} : memref<4608xbf16> 
    %outC_prod_lock = aie.lock(%mem_tile_1_1, 0) {init = 12 : i32, sym_name = "outC_prod_lock"}
    %outC_cons_lock = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "outC_cons_lock"}
    %memC5_buff_0 = aie.buffer(%tile_3_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "memC5_buff_0"} : memref<768xbf16> 
    %memC5_buff_1 = aie.buffer(%tile_3_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memC5_buff_1"} : memref<768xbf16> 
    %memC5_prod_lock = aie.lock(%tile_3_4, 2) {init = 2 : i32, sym_name = "memC5_prod_lock"}
    %memC5_cons_lock = aie.lock(%tile_3_4, 3) {init = 0 : i32, sym_name = "memC5_cons_lock"}
    %memC4_buff_0 = aie.buffer(%tile_3_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "memC4_buff_0"} : memref<768xbf16> 
    %memC4_buff_1 = aie.buffer(%tile_3_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memC4_buff_1"} : memref<768xbf16> 
    %memC4_prod_lock = aie.lock(%tile_3_3, 2) {init = 2 : i32, sym_name = "memC4_prod_lock"}
    %memC4_cons_lock = aie.lock(%tile_3_3, 3) {init = 0 : i32, sym_name = "memC4_cons_lock"}
    %memC3_buff_0 = aie.buffer(%tile_3_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "memC3_buff_0"} : memref<768xbf16> 
    %memC3_buff_1 = aie.buffer(%tile_3_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memC3_buff_1"} : memref<768xbf16> 
    %memC3_prod_lock = aie.lock(%tile_3_2, 2) {init = 2 : i32, sym_name = "memC3_prod_lock"}
    %memC3_cons_lock = aie.lock(%tile_3_2, 3) {init = 0 : i32, sym_name = "memC3_cons_lock"}
    %memC2_buff_0 = aie.buffer(%tile_2_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "memC2_buff_0"} : memref<768xbf16> 
    %memC2_buff_1 = aie.buffer(%tile_2_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memC2_buff_1"} : memref<768xbf16> 
    %memC2_prod_lock = aie.lock(%tile_2_4, 2) {init = 2 : i32, sym_name = "memC2_prod_lock"}
    %memC2_cons_lock = aie.lock(%tile_2_4, 3) {init = 0 : i32, sym_name = "memC2_cons_lock"}
    %memC1_buff_0 = aie.buffer(%tile_2_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "memC1_buff_0"} : memref<768xbf16> 
    %memC1_buff_1 = aie.buffer(%tile_2_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memC1_buff_1"} : memref<768xbf16> 
    %memC1_prod_lock = aie.lock(%tile_2_3, 2) {init = 2 : i32, sym_name = "memC1_prod_lock"}
    %memC1_cons_lock = aie.lock(%tile_2_3, 3) {init = 0 : i32, sym_name = "memC1_cons_lock"}
    %memC0_buff_0 = aie.buffer(%tile_2_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "memC0_buff_0"} : memref<768xbf16> 
    %memC0_buff_1 = aie.buffer(%tile_2_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memC0_buff_1"} : memref<768xbf16> 
    %memC0_prod_lock = aie.lock(%tile_2_2, 2) {init = 2 : i32, sym_name = "memC0_prod_lock"}
    %memC0_cons_lock = aie.lock(%tile_2_2, 3) {init = 0 : i32, sym_name = "memC0_cons_lock"}
    %memA5_cons_buff_0 = aie.buffer(%tile_3_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memA5_cons_buff_0"} : memref<768xbf16> 
    %memA5_cons_buff_1 = aie.buffer(%tile_3_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memA5_cons_buff_1"} : memref<768xbf16> 
    %memA5_cons_prod_lock = aie.lock(%tile_3_4, 0) {init = 2 : i32, sym_name = "memA5_cons_prod_lock"}
    %memA5_cons_cons_lock = aie.lock(%tile_3_4, 1) {init = 0 : i32, sym_name = "memA5_cons_cons_lock"}
    %memA4_cons_buff_0 = aie.buffer(%tile_3_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memA4_cons_buff_0"} : memref<768xbf16> 
    %memA4_cons_buff_1 = aie.buffer(%tile_3_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memA4_cons_buff_1"} : memref<768xbf16> 
    %memA4_cons_prod_lock = aie.lock(%tile_3_3, 0) {init = 2 : i32, sym_name = "memA4_cons_prod_lock"}
    %memA4_cons_cons_lock = aie.lock(%tile_3_3, 1) {init = 0 : i32, sym_name = "memA4_cons_cons_lock"}
    %memA3_cons_buff_0 = aie.buffer(%tile_3_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memA3_cons_buff_0"} : memref<768xbf16> 
    %memA3_cons_buff_1 = aie.buffer(%tile_3_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memA3_cons_buff_1"} : memref<768xbf16> 
    %memA3_cons_prod_lock = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "memA3_cons_prod_lock"}
    %memA3_cons_cons_lock = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "memA3_cons_cons_lock"}
    %memA2_cons_buff_0 = aie.buffer(%tile_2_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memA2_cons_buff_0"} : memref<768xbf16> 
    %memA2_cons_buff_1 = aie.buffer(%tile_2_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memA2_cons_buff_1"} : memref<768xbf16> 
    %memA2_cons_prod_lock = aie.lock(%tile_2_4, 0) {init = 2 : i32, sym_name = "memA2_cons_prod_lock"}
    %memA2_cons_cons_lock = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "memA2_cons_cons_lock"}
    %memA1_cons_buff_0 = aie.buffer(%tile_2_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memA1_cons_buff_0"} : memref<768xbf16> 
    %memA1_cons_buff_1 = aie.buffer(%tile_2_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memA1_cons_buff_1"} : memref<768xbf16> 
    %memA1_cons_prod_lock = aie.lock(%tile_2_3, 0) {init = 2 : i32, sym_name = "memA1_cons_prod_lock"}
    %memA1_cons_cons_lock = aie.lock(%tile_2_3, 1) {init = 0 : i32, sym_name = "memA1_cons_cons_lock"}
    %memA0_cons_buff_0 = aie.buffer(%tile_2_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memA0_cons_buff_0"} : memref<768xbf16> 
    %memA0_cons_buff_1 = aie.buffer(%tile_2_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memA0_cons_buff_1"} : memref<768xbf16> 
    %memA0_cons_prod_lock = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "memA0_cons_prod_lock"}
    %memA0_cons_cons_lock = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "memA0_cons_cons_lock"}
    %inA_cons_buff_0 = aie.buffer(%mem_tile_0_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "inA_cons_buff_0"} : memref<4608xbf16> 
    %inA_cons_buff_1 = aie.buffer(%mem_tile_0_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "inA_cons_buff_1"} : memref<4608xbf16> 
    %inA_cons_prod_lock = aie.lock(%mem_tile_0_1, 0) {init = 12 : i32, sym_name = "inA_cons_prod_lock"}
    %inA_cons_cons_lock = aie.lock(%mem_tile_0_1, 1) {init = 0 : i32, sym_name = "inA_cons_cons_lock"}
    %inA_prod_lock = aie.lock(%shim_noc_tile_0_0, 0) {init = 1 : i32, sym_name = "inA_prod_lock"}
    %inA_cons_lock = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "inA_cons_lock"}
    %switchbox_0_0 = aie.switchbox(%shim_noc_tile_0_0) {
      aie.connect<South : 3, North : 5>
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
      aie.connect<DMA : 0, North : 1>
      aie.connect<DMA : 1, North : 0>
      aie.connect<DMA : 2, North : 5>
      aie.connect<DMA : 3, North : 2>
      aie.connect<DMA : 4, North : 4>
      aie.connect<DMA : 5, North : 3>
    }
    %tile_0_2 = aie.tile(0, 2)
    %switchbox_0_2 = aie.switchbox(%tile_0_2) {
      aie.connect<South : 1, East : 2>
      aie.connect<South : 0, North : 3>
      aie.connect<South : 5, North : 5>
      aie.connect<South : 2, East : 0>
      aie.connect<South : 4, North : 0>
      aie.connect<South : 3, East : 1>
    }
    %tile_1_2 = aie.tile(1, 2)
    %switchbox_1_2 = aie.switchbox(%tile_1_2) {
      aie.connect<West : 2, East : 3>
      aie.connect<West : 0, East : 2>
      aie.connect<West : 1, North : 3>
      aie.connect<East : 1, South : 1>
      aie.connect<North : 3, South : 0>
      aie.connect<North : 2, South : 2>
      aie.connect<East : 3, South : 3>
    }
    %switchbox_2_2 = aie.switchbox(%tile_2_2) {
      aie.connect<West : 3, DMA : 0>
      aie.connect<West : 2, East : 1>
      aie.connect<DMA : 0, West : 1>
      aie.connect<East : 3, West : 3>
      aie.connect<East : 1, South : 3>
      aie.connect<East : 2, South : 1>
    }
    %tile_0_3 = aie.tile(0, 3)
    %switchbox_0_3 = aie.switchbox(%tile_0_3) {
      aie.connect<South : 3, East : 1>
      aie.connect<South : 5, North : 0>
      aie.connect<South : 0, East : 2>
    }
    %tile_1_3 = aie.tile(1, 3)
    %switchbox_1_3 = aie.switchbox(%tile_1_3) {
      aie.connect<West : 1, East : 2>
      aie.connect<West : 2, East : 1>
      aie.connect<South : 3, North : 0>
      aie.connect<East : 0, South : 3>
      aie.connect<North : 2, South : 2>
    }
    %switchbox_2_3 = aie.switchbox(%tile_2_3) {
      aie.connect<West : 2, DMA : 0>
      aie.connect<West : 1, East : 2>
      aie.connect<DMA : 0, West : 0>
    }
    %tile_0_4 = aie.tile(0, 4)
    %switchbox_0_4 = aie.switchbox(%tile_0_4) {
      aie.connect<South : 0, East : 3>
    }
    %tile_1_4 = aie.tile(1, 4)
    %switchbox_1_4 = aie.switchbox(%tile_1_4) {
      aie.connect<West : 3, East : 3>
      aie.connect<South : 0, East : 2>
      aie.connect<East : 3, South : 2>
    }
    %switchbox_2_4 = aie.switchbox(%tile_2_4) {
      aie.connect<West : 3, DMA : 0>
      aie.connect<West : 2, East : 3>
      aie.connect<DMA : 0, West : 3>
    }
    %switchbox_3_2 = aie.switchbox(%tile_3_2) {
      aie.connect<West : 1, DMA : 0>
      aie.connect<DMA : 0, West : 3>
      aie.connect<North : 1, West : 1>
      aie.connect<North : 3, West : 2>
    }
    %switchbox_3_3 = aie.switchbox(%tile_3_3) {
      aie.connect<West : 2, DMA : 0>
      aie.connect<DMA : 0, South : 1>
      aie.connect<North : 1, South : 3>
    }
    %switchbox_3_4 = aie.switchbox(%tile_3_4) {
      aie.connect<West : 3, DMA : 0>
      aie.connect<DMA : 0, South : 1>
    }
    %switchbox_1_1 = aie.switchbox(%mem_tile_1_1) {
      aie.connect<North : 1, DMA : 0>
      aie.connect<North : 0, DMA : 1>
      aie.connect<North : 2, DMA : 2>
      aie.connect<North : 3, DMA : 3>
      aie.connect<South : 5, DMA : 4>
      aie.connect<South : 3, DMA : 5>
      aie.connect<DMA : 0, South : 2>
    }
    %switchbox_1_0 = aie.switchbox(%shim_noc_tile_1_0) {
      aie.connect<East : 3, North : 5>
      aie.connect<East : 1, North : 3>
      aie.connect<North : 2, South : 2>
      %0 = aie.amsel<5> (3)
      %1 = aie.masterset(South : 0, %0) {keep_pkt_header = true}
      aie.packet_rules(TileControl : 0) {
        aie.rule(31, 15, %0)
      }
    }
    %switchbox_2_0 = aie.switchbox(%shim_noc_tile_2_0) {
      aie.connect<North : 3, West : 3>
      aie.connect<North : 1, West : 1>
    }
    %mem_tile_2_1 = aie.tile(2, 1)
    %switchbox_2_1 = aie.switchbox(%mem_tile_2_1) {
      aie.connect<North : 3, South : 3>
      aie.connect<North : 1, South : 1>
    }
    %shim_mux_1_0 = aie.shim_mux(%shim_noc_tile_1_0) {
      aie.connect<North : 2, DMA : 0>
    }
    %core_2_2 = aie.core(%tile_2_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb26
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb27
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c5 = arith.constant 5 : index
      %c1_1 = arith.constant 1 : index
      %c4 = arith.constant 4 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c4 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memC0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c768 = arith.constant 768 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_3 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c768 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %memA0_cons_buff_0[%4] : memref<768xbf16>
      memref.store %6, %memC0_buff_0[%4] : memref<768xbf16>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%memA0_cons_prod_lock, Release, 1)
      aie.use_lock(%memC0_cons_lock, Release, 1)
      aie.use_lock(%memC0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c768_6 = arith.constant 768 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%8: index):  // 2 preds: ^bb7, ^bb9
      %9 = arith.cmpi slt, %8, %c768_6 : index
      cf.cond_br %9, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      %10 = memref.load %memA0_cons_buff_1[%8] : memref<768xbf16>
      memref.store %10, %memC0_buff_1[%8] : memref<768xbf16>
      %c1_9 = arith.constant 1 : index
      %11 = arith.addi %8, %c1_7 : index
      %12 = memref.load %memA0_cons_buff_1[%11] : memref<768xbf16>
      memref.store %12, %memC0_buff_1[%11] : memref<768xbf16>
      %13 = arith.addi %8, %c2_8 : index
      cf.br ^bb8(%13 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%memA0_cons_prod_lock, Release, 1)
      aie.use_lock(%memC0_cons_lock, Release, 1)
      %14 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%14 : index)
    ^bb11:  // pred: ^bb3
      aie.use_lock(%memC0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_10 = arith.constant 0 : index
      %c768_11 = arith.constant 768 : index
      %c1_12 = arith.constant 1 : index
      %c2_13 = arith.constant 2 : index
      cf.br ^bb12(%c0_10 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c768_11 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      %17 = memref.load %memA0_cons_buff_0[%15] : memref<768xbf16>
      memref.store %17, %memC0_buff_0[%15] : memref<768xbf16>
      %c1_14 = arith.constant 1 : index
      %18 = arith.addi %15, %c1_12 : index
      %19 = memref.load %memA0_cons_buff_0[%18] : memref<768xbf16>
      memref.store %19, %memC0_buff_0[%18] : memref<768xbf16>
      %20 = arith.addi %15, %c2_13 : index
      cf.br ^bb12(%20 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%memA0_cons_prod_lock, Release, 1)
      aie.use_lock(%memC0_cons_lock, Release, 1)
      %c0_15 = arith.constant 0 : index
      %c5_16 = arith.constant 5 : index
      %c1_17 = arith.constant 1 : index
      %c4_18 = arith.constant 4 : index
      %c2_19 = arith.constant 2 : index
      cf.br ^bb15(%c0_15 : index)
    ^bb15(%21: index):  // 2 preds: ^bb14, ^bb22
      %22 = arith.cmpi slt, %21, %c4_18 : index
      cf.cond_br %22, ^bb16, ^bb23
    ^bb16:  // pred: ^bb15
      aie.use_lock(%memC0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_20 = arith.constant 0 : index
      %c768_21 = arith.constant 768 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb17(%c0_20 : index)
    ^bb17(%23: index):  // 2 preds: ^bb16, ^bb18
      %24 = arith.cmpi slt, %23, %c768_21 : index
      cf.cond_br %24, ^bb18, ^bb19
    ^bb18:  // pred: ^bb17
      %25 = memref.load %memA0_cons_buff_1[%23] : memref<768xbf16>
      memref.store %25, %memC0_buff_1[%23] : memref<768xbf16>
      %26 = arith.addi %23, %c1_22 : index
      cf.br ^bb17(%26 : index)
    ^bb19:  // pred: ^bb17
      aie.use_lock(%memA0_cons_prod_lock, Release, 1)
      aie.use_lock(%memC0_cons_lock, Release, 1)
      aie.use_lock(%memC0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c768_24 = arith.constant 768 : index
      %c1_25 = arith.constant 1 : index
      %c2_26 = arith.constant 2 : index
      cf.br ^bb20(%c0_23 : index)
    ^bb20(%27: index):  // 2 preds: ^bb19, ^bb21
      %28 = arith.cmpi slt, %27, %c768_24 : index
      cf.cond_br %28, ^bb21, ^bb22
    ^bb21:  // pred: ^bb20
      %29 = memref.load %memA0_cons_buff_0[%27] : memref<768xbf16>
      memref.store %29, %memC0_buff_0[%27] : memref<768xbf16>
      %c1_27 = arith.constant 1 : index
      %30 = arith.addi %27, %c1_25 : index
      %31 = memref.load %memA0_cons_buff_0[%30] : memref<768xbf16>
      memref.store %31, %memC0_buff_0[%30] : memref<768xbf16>
      %32 = arith.addi %27, %c2_26 : index
      cf.br ^bb20(%32 : index)
    ^bb22:  // pred: ^bb20
      aie.use_lock(%memA0_cons_prod_lock, Release, 1)
      aie.use_lock(%memC0_cons_lock, Release, 1)
      %33 = arith.addi %21, %c2_19 : index
      cf.br ^bb15(%33 : index)
    ^bb23:  // pred: ^bb15
      aie.use_lock(%memC0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_28 = arith.constant 0 : index
      %c768_29 = arith.constant 768 : index
      %c1_30 = arith.constant 1 : index
      %c2_31 = arith.constant 2 : index
      cf.br ^bb24(%c0_28 : index)
    ^bb24(%34: index):  // 2 preds: ^bb23, ^bb25
      %35 = arith.cmpi slt, %34, %c768_29 : index
      cf.cond_br %35, ^bb25, ^bb26
    ^bb25:  // pred: ^bb24
      %36 = memref.load %memA0_cons_buff_1[%34] : memref<768xbf16>
      memref.store %36, %memC0_buff_1[%34] : memref<768xbf16>
      %c1_32 = arith.constant 1 : index
      %37 = arith.addi %34, %c1_30 : index
      %38 = memref.load %memA0_cons_buff_1[%37] : memref<768xbf16>
      memref.store %38, %memC0_buff_1[%37] : memref<768xbf16>
      %39 = arith.addi %34, %c2_31 : index
      cf.br ^bb24(%39 : index)
    ^bb26:  // pred: ^bb24
      aie.use_lock(%memA0_cons_prod_lock, Release, 1)
      aie.use_lock(%memC0_cons_lock, Release, 1)
      %40 = arith.addi %0, %c2 : index
      cf.br ^bb1(%40 : index)
    ^bb27:  // pred: ^bb1
      %c0_33 = arith.constant 0 : index
      %c5_34 = arith.constant 5 : index
      %c1_35 = arith.constant 1 : index
      %c4_36 = arith.constant 4 : index
      %c2_37 = arith.constant 2 : index
      cf.br ^bb28(%c0_33 : index)
    ^bb28(%41: index):  // 2 preds: ^bb27, ^bb35
      %42 = arith.cmpi slt, %41, %c4_36 : index
      cf.cond_br %42, ^bb29, ^bb36
    ^bb29:  // pred: ^bb28
      aie.use_lock(%memC0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c768_39 = arith.constant 768 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb30(%c0_38 : index)
    ^bb30(%43: index):  // 2 preds: ^bb29, ^bb31
      %44 = arith.cmpi slt, %43, %c768_39 : index
      cf.cond_br %44, ^bb31, ^bb32
    ^bb31:  // pred: ^bb30
      %45 = memref.load %memA0_cons_buff_0[%43] : memref<768xbf16>
      memref.store %45, %memC0_buff_0[%43] : memref<768xbf16>
      %46 = arith.addi %43, %c1_40 : index
      cf.br ^bb30(%46 : index)
    ^bb32:  // pred: ^bb30
      aie.use_lock(%memA0_cons_prod_lock, Release, 1)
      aie.use_lock(%memC0_cons_lock, Release, 1)
      aie.use_lock(%memC0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_41 = arith.constant 0 : index
      %c768_42 = arith.constant 768 : index
      %c1_43 = arith.constant 1 : index
      %c2_44 = arith.constant 2 : index
      cf.br ^bb33(%c0_41 : index)
    ^bb33(%47: index):  // 2 preds: ^bb32, ^bb34
      %48 = arith.cmpi slt, %47, %c768_42 : index
      cf.cond_br %48, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %49 = memref.load %memA0_cons_buff_1[%47] : memref<768xbf16>
      memref.store %49, %memC0_buff_1[%47] : memref<768xbf16>
      %c1_45 = arith.constant 1 : index
      %50 = arith.addi %47, %c1_43 : index
      %51 = memref.load %memA0_cons_buff_1[%50] : memref<768xbf16>
      memref.store %51, %memC0_buff_1[%50] : memref<768xbf16>
      %52 = arith.addi %47, %c2_44 : index
      cf.br ^bb33(%52 : index)
    ^bb35:  // pred: ^bb33
      aie.use_lock(%memA0_cons_prod_lock, Release, 1)
      aie.use_lock(%memC0_cons_lock, Release, 1)
      %53 = arith.addi %41, %c2_37 : index
      cf.br ^bb28(%53 : index)
    ^bb36:  // pred: ^bb28
      aie.use_lock(%memC0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA0_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_46 = arith.constant 0 : index
      %c768_47 = arith.constant 768 : index
      %c1_48 = arith.constant 1 : index
      %c2_49 = arith.constant 2 : index
      cf.br ^bb37(%c0_46 : index)
    ^bb37(%54: index):  // 2 preds: ^bb36, ^bb38
      %55 = arith.cmpi slt, %54, %c768_47 : index
      cf.cond_br %55, ^bb38, ^bb39
    ^bb38:  // pred: ^bb37
      %56 = memref.load %memA0_cons_buff_0[%54] : memref<768xbf16>
      memref.store %56, %memC0_buff_0[%54] : memref<768xbf16>
      %c1_50 = arith.constant 1 : index
      %57 = arith.addi %54, %c1_48 : index
      %58 = memref.load %memA0_cons_buff_0[%57] : memref<768xbf16>
      memref.store %58, %memC0_buff_0[%57] : memref<768xbf16>
      %59 = arith.addi %54, %c2_49 : index
      cf.br ^bb37(%59 : index)
    ^bb39:  // pred: ^bb37
      aie.use_lock(%memA0_cons_prod_lock, Release, 1)
      aie.use_lock(%memC0_cons_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_2_3 = aie.core(%tile_2_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb26
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb27
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c5 = arith.constant 5 : index
      %c1_1 = arith.constant 1 : index
      %c4 = arith.constant 4 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c4 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memC1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c768 = arith.constant 768 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_3 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c768 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %memA1_cons_buff_0[%4] : memref<768xbf16>
      memref.store %6, %memC1_buff_0[%4] : memref<768xbf16>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%memA1_cons_prod_lock, Release, 1)
      aie.use_lock(%memC1_cons_lock, Release, 1)
      aie.use_lock(%memC1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c768_6 = arith.constant 768 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%8: index):  // 2 preds: ^bb7, ^bb9
      %9 = arith.cmpi slt, %8, %c768_6 : index
      cf.cond_br %9, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      %10 = memref.load %memA1_cons_buff_1[%8] : memref<768xbf16>
      memref.store %10, %memC1_buff_1[%8] : memref<768xbf16>
      %c1_9 = arith.constant 1 : index
      %11 = arith.addi %8, %c1_7 : index
      %12 = memref.load %memA1_cons_buff_1[%11] : memref<768xbf16>
      memref.store %12, %memC1_buff_1[%11] : memref<768xbf16>
      %13 = arith.addi %8, %c2_8 : index
      cf.br ^bb8(%13 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%memA1_cons_prod_lock, Release, 1)
      aie.use_lock(%memC1_cons_lock, Release, 1)
      %14 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%14 : index)
    ^bb11:  // pred: ^bb3
      aie.use_lock(%memC1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_10 = arith.constant 0 : index
      %c768_11 = arith.constant 768 : index
      %c1_12 = arith.constant 1 : index
      %c2_13 = arith.constant 2 : index
      cf.br ^bb12(%c0_10 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c768_11 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      %17 = memref.load %memA1_cons_buff_0[%15] : memref<768xbf16>
      memref.store %17, %memC1_buff_0[%15] : memref<768xbf16>
      %c1_14 = arith.constant 1 : index
      %18 = arith.addi %15, %c1_12 : index
      %19 = memref.load %memA1_cons_buff_0[%18] : memref<768xbf16>
      memref.store %19, %memC1_buff_0[%18] : memref<768xbf16>
      %20 = arith.addi %15, %c2_13 : index
      cf.br ^bb12(%20 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%memA1_cons_prod_lock, Release, 1)
      aie.use_lock(%memC1_cons_lock, Release, 1)
      %c0_15 = arith.constant 0 : index
      %c5_16 = arith.constant 5 : index
      %c1_17 = arith.constant 1 : index
      %c4_18 = arith.constant 4 : index
      %c2_19 = arith.constant 2 : index
      cf.br ^bb15(%c0_15 : index)
    ^bb15(%21: index):  // 2 preds: ^bb14, ^bb22
      %22 = arith.cmpi slt, %21, %c4_18 : index
      cf.cond_br %22, ^bb16, ^bb23
    ^bb16:  // pred: ^bb15
      aie.use_lock(%memC1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_20 = arith.constant 0 : index
      %c768_21 = arith.constant 768 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb17(%c0_20 : index)
    ^bb17(%23: index):  // 2 preds: ^bb16, ^bb18
      %24 = arith.cmpi slt, %23, %c768_21 : index
      cf.cond_br %24, ^bb18, ^bb19
    ^bb18:  // pred: ^bb17
      %25 = memref.load %memA1_cons_buff_1[%23] : memref<768xbf16>
      memref.store %25, %memC1_buff_1[%23] : memref<768xbf16>
      %26 = arith.addi %23, %c1_22 : index
      cf.br ^bb17(%26 : index)
    ^bb19:  // pred: ^bb17
      aie.use_lock(%memA1_cons_prod_lock, Release, 1)
      aie.use_lock(%memC1_cons_lock, Release, 1)
      aie.use_lock(%memC1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c768_24 = arith.constant 768 : index
      %c1_25 = arith.constant 1 : index
      %c2_26 = arith.constant 2 : index
      cf.br ^bb20(%c0_23 : index)
    ^bb20(%27: index):  // 2 preds: ^bb19, ^bb21
      %28 = arith.cmpi slt, %27, %c768_24 : index
      cf.cond_br %28, ^bb21, ^bb22
    ^bb21:  // pred: ^bb20
      %29 = memref.load %memA1_cons_buff_0[%27] : memref<768xbf16>
      memref.store %29, %memC1_buff_0[%27] : memref<768xbf16>
      %c1_27 = arith.constant 1 : index
      %30 = arith.addi %27, %c1_25 : index
      %31 = memref.load %memA1_cons_buff_0[%30] : memref<768xbf16>
      memref.store %31, %memC1_buff_0[%30] : memref<768xbf16>
      %32 = arith.addi %27, %c2_26 : index
      cf.br ^bb20(%32 : index)
    ^bb22:  // pred: ^bb20
      aie.use_lock(%memA1_cons_prod_lock, Release, 1)
      aie.use_lock(%memC1_cons_lock, Release, 1)
      %33 = arith.addi %21, %c2_19 : index
      cf.br ^bb15(%33 : index)
    ^bb23:  // pred: ^bb15
      aie.use_lock(%memC1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_28 = arith.constant 0 : index
      %c768_29 = arith.constant 768 : index
      %c1_30 = arith.constant 1 : index
      %c2_31 = arith.constant 2 : index
      cf.br ^bb24(%c0_28 : index)
    ^bb24(%34: index):  // 2 preds: ^bb23, ^bb25
      %35 = arith.cmpi slt, %34, %c768_29 : index
      cf.cond_br %35, ^bb25, ^bb26
    ^bb25:  // pred: ^bb24
      %36 = memref.load %memA1_cons_buff_1[%34] : memref<768xbf16>
      memref.store %36, %memC1_buff_1[%34] : memref<768xbf16>
      %c1_32 = arith.constant 1 : index
      %37 = arith.addi %34, %c1_30 : index
      %38 = memref.load %memA1_cons_buff_1[%37] : memref<768xbf16>
      memref.store %38, %memC1_buff_1[%37] : memref<768xbf16>
      %39 = arith.addi %34, %c2_31 : index
      cf.br ^bb24(%39 : index)
    ^bb26:  // pred: ^bb24
      aie.use_lock(%memA1_cons_prod_lock, Release, 1)
      aie.use_lock(%memC1_cons_lock, Release, 1)
      %40 = arith.addi %0, %c2 : index
      cf.br ^bb1(%40 : index)
    ^bb27:  // pred: ^bb1
      %c0_33 = arith.constant 0 : index
      %c5_34 = arith.constant 5 : index
      %c1_35 = arith.constant 1 : index
      %c4_36 = arith.constant 4 : index
      %c2_37 = arith.constant 2 : index
      cf.br ^bb28(%c0_33 : index)
    ^bb28(%41: index):  // 2 preds: ^bb27, ^bb35
      %42 = arith.cmpi slt, %41, %c4_36 : index
      cf.cond_br %42, ^bb29, ^bb36
    ^bb29:  // pred: ^bb28
      aie.use_lock(%memC1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c768_39 = arith.constant 768 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb30(%c0_38 : index)
    ^bb30(%43: index):  // 2 preds: ^bb29, ^bb31
      %44 = arith.cmpi slt, %43, %c768_39 : index
      cf.cond_br %44, ^bb31, ^bb32
    ^bb31:  // pred: ^bb30
      %45 = memref.load %memA1_cons_buff_0[%43] : memref<768xbf16>
      memref.store %45, %memC1_buff_0[%43] : memref<768xbf16>
      %46 = arith.addi %43, %c1_40 : index
      cf.br ^bb30(%46 : index)
    ^bb32:  // pred: ^bb30
      aie.use_lock(%memA1_cons_prod_lock, Release, 1)
      aie.use_lock(%memC1_cons_lock, Release, 1)
      aie.use_lock(%memC1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_41 = arith.constant 0 : index
      %c768_42 = arith.constant 768 : index
      %c1_43 = arith.constant 1 : index
      %c2_44 = arith.constant 2 : index
      cf.br ^bb33(%c0_41 : index)
    ^bb33(%47: index):  // 2 preds: ^bb32, ^bb34
      %48 = arith.cmpi slt, %47, %c768_42 : index
      cf.cond_br %48, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %49 = memref.load %memA1_cons_buff_1[%47] : memref<768xbf16>
      memref.store %49, %memC1_buff_1[%47] : memref<768xbf16>
      %c1_45 = arith.constant 1 : index
      %50 = arith.addi %47, %c1_43 : index
      %51 = memref.load %memA1_cons_buff_1[%50] : memref<768xbf16>
      memref.store %51, %memC1_buff_1[%50] : memref<768xbf16>
      %52 = arith.addi %47, %c2_44 : index
      cf.br ^bb33(%52 : index)
    ^bb35:  // pred: ^bb33
      aie.use_lock(%memA1_cons_prod_lock, Release, 1)
      aie.use_lock(%memC1_cons_lock, Release, 1)
      %53 = arith.addi %41, %c2_37 : index
      cf.br ^bb28(%53 : index)
    ^bb36:  // pred: ^bb28
      aie.use_lock(%memC1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA1_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_46 = arith.constant 0 : index
      %c768_47 = arith.constant 768 : index
      %c1_48 = arith.constant 1 : index
      %c2_49 = arith.constant 2 : index
      cf.br ^bb37(%c0_46 : index)
    ^bb37(%54: index):  // 2 preds: ^bb36, ^bb38
      %55 = arith.cmpi slt, %54, %c768_47 : index
      cf.cond_br %55, ^bb38, ^bb39
    ^bb38:  // pred: ^bb37
      %56 = memref.load %memA1_cons_buff_0[%54] : memref<768xbf16>
      memref.store %56, %memC1_buff_0[%54] : memref<768xbf16>
      %c1_50 = arith.constant 1 : index
      %57 = arith.addi %54, %c1_48 : index
      %58 = memref.load %memA1_cons_buff_0[%57] : memref<768xbf16>
      memref.store %58, %memC1_buff_0[%57] : memref<768xbf16>
      %59 = arith.addi %54, %c2_49 : index
      cf.br ^bb37(%59 : index)
    ^bb39:  // pred: ^bb37
      aie.use_lock(%memA1_cons_prod_lock, Release, 1)
      aie.use_lock(%memC1_cons_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_2_4 = aie.core(%tile_2_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb26
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb27
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c5 = arith.constant 5 : index
      %c1_1 = arith.constant 1 : index
      %c4 = arith.constant 4 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c4 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memC2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c768 = arith.constant 768 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_3 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c768 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %memA2_cons_buff_0[%4] : memref<768xbf16>
      memref.store %6, %memC2_buff_0[%4] : memref<768xbf16>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%memA2_cons_prod_lock, Release, 1)
      aie.use_lock(%memC2_cons_lock, Release, 1)
      aie.use_lock(%memC2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c768_6 = arith.constant 768 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%8: index):  // 2 preds: ^bb7, ^bb9
      %9 = arith.cmpi slt, %8, %c768_6 : index
      cf.cond_br %9, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      %10 = memref.load %memA2_cons_buff_1[%8] : memref<768xbf16>
      memref.store %10, %memC2_buff_1[%8] : memref<768xbf16>
      %c1_9 = arith.constant 1 : index
      %11 = arith.addi %8, %c1_7 : index
      %12 = memref.load %memA2_cons_buff_1[%11] : memref<768xbf16>
      memref.store %12, %memC2_buff_1[%11] : memref<768xbf16>
      %13 = arith.addi %8, %c2_8 : index
      cf.br ^bb8(%13 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%memA2_cons_prod_lock, Release, 1)
      aie.use_lock(%memC2_cons_lock, Release, 1)
      %14 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%14 : index)
    ^bb11:  // pred: ^bb3
      aie.use_lock(%memC2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_10 = arith.constant 0 : index
      %c768_11 = arith.constant 768 : index
      %c1_12 = arith.constant 1 : index
      %c2_13 = arith.constant 2 : index
      cf.br ^bb12(%c0_10 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c768_11 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      %17 = memref.load %memA2_cons_buff_0[%15] : memref<768xbf16>
      memref.store %17, %memC2_buff_0[%15] : memref<768xbf16>
      %c1_14 = arith.constant 1 : index
      %18 = arith.addi %15, %c1_12 : index
      %19 = memref.load %memA2_cons_buff_0[%18] : memref<768xbf16>
      memref.store %19, %memC2_buff_0[%18] : memref<768xbf16>
      %20 = arith.addi %15, %c2_13 : index
      cf.br ^bb12(%20 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%memA2_cons_prod_lock, Release, 1)
      aie.use_lock(%memC2_cons_lock, Release, 1)
      %c0_15 = arith.constant 0 : index
      %c5_16 = arith.constant 5 : index
      %c1_17 = arith.constant 1 : index
      %c4_18 = arith.constant 4 : index
      %c2_19 = arith.constant 2 : index
      cf.br ^bb15(%c0_15 : index)
    ^bb15(%21: index):  // 2 preds: ^bb14, ^bb22
      %22 = arith.cmpi slt, %21, %c4_18 : index
      cf.cond_br %22, ^bb16, ^bb23
    ^bb16:  // pred: ^bb15
      aie.use_lock(%memC2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_20 = arith.constant 0 : index
      %c768_21 = arith.constant 768 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb17(%c0_20 : index)
    ^bb17(%23: index):  // 2 preds: ^bb16, ^bb18
      %24 = arith.cmpi slt, %23, %c768_21 : index
      cf.cond_br %24, ^bb18, ^bb19
    ^bb18:  // pred: ^bb17
      %25 = memref.load %memA2_cons_buff_1[%23] : memref<768xbf16>
      memref.store %25, %memC2_buff_1[%23] : memref<768xbf16>
      %26 = arith.addi %23, %c1_22 : index
      cf.br ^bb17(%26 : index)
    ^bb19:  // pred: ^bb17
      aie.use_lock(%memA2_cons_prod_lock, Release, 1)
      aie.use_lock(%memC2_cons_lock, Release, 1)
      aie.use_lock(%memC2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c768_24 = arith.constant 768 : index
      %c1_25 = arith.constant 1 : index
      %c2_26 = arith.constant 2 : index
      cf.br ^bb20(%c0_23 : index)
    ^bb20(%27: index):  // 2 preds: ^bb19, ^bb21
      %28 = arith.cmpi slt, %27, %c768_24 : index
      cf.cond_br %28, ^bb21, ^bb22
    ^bb21:  // pred: ^bb20
      %29 = memref.load %memA2_cons_buff_0[%27] : memref<768xbf16>
      memref.store %29, %memC2_buff_0[%27] : memref<768xbf16>
      %c1_27 = arith.constant 1 : index
      %30 = arith.addi %27, %c1_25 : index
      %31 = memref.load %memA2_cons_buff_0[%30] : memref<768xbf16>
      memref.store %31, %memC2_buff_0[%30] : memref<768xbf16>
      %32 = arith.addi %27, %c2_26 : index
      cf.br ^bb20(%32 : index)
    ^bb22:  // pred: ^bb20
      aie.use_lock(%memA2_cons_prod_lock, Release, 1)
      aie.use_lock(%memC2_cons_lock, Release, 1)
      %33 = arith.addi %21, %c2_19 : index
      cf.br ^bb15(%33 : index)
    ^bb23:  // pred: ^bb15
      aie.use_lock(%memC2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_28 = arith.constant 0 : index
      %c768_29 = arith.constant 768 : index
      %c1_30 = arith.constant 1 : index
      %c2_31 = arith.constant 2 : index
      cf.br ^bb24(%c0_28 : index)
    ^bb24(%34: index):  // 2 preds: ^bb23, ^bb25
      %35 = arith.cmpi slt, %34, %c768_29 : index
      cf.cond_br %35, ^bb25, ^bb26
    ^bb25:  // pred: ^bb24
      %36 = memref.load %memA2_cons_buff_1[%34] : memref<768xbf16>
      memref.store %36, %memC2_buff_1[%34] : memref<768xbf16>
      %c1_32 = arith.constant 1 : index
      %37 = arith.addi %34, %c1_30 : index
      %38 = memref.load %memA2_cons_buff_1[%37] : memref<768xbf16>
      memref.store %38, %memC2_buff_1[%37] : memref<768xbf16>
      %39 = arith.addi %34, %c2_31 : index
      cf.br ^bb24(%39 : index)
    ^bb26:  // pred: ^bb24
      aie.use_lock(%memA2_cons_prod_lock, Release, 1)
      aie.use_lock(%memC2_cons_lock, Release, 1)
      %40 = arith.addi %0, %c2 : index
      cf.br ^bb1(%40 : index)
    ^bb27:  // pred: ^bb1
      %c0_33 = arith.constant 0 : index
      %c5_34 = arith.constant 5 : index
      %c1_35 = arith.constant 1 : index
      %c4_36 = arith.constant 4 : index
      %c2_37 = arith.constant 2 : index
      cf.br ^bb28(%c0_33 : index)
    ^bb28(%41: index):  // 2 preds: ^bb27, ^bb35
      %42 = arith.cmpi slt, %41, %c4_36 : index
      cf.cond_br %42, ^bb29, ^bb36
    ^bb29:  // pred: ^bb28
      aie.use_lock(%memC2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c768_39 = arith.constant 768 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb30(%c0_38 : index)
    ^bb30(%43: index):  // 2 preds: ^bb29, ^bb31
      %44 = arith.cmpi slt, %43, %c768_39 : index
      cf.cond_br %44, ^bb31, ^bb32
    ^bb31:  // pred: ^bb30
      %45 = memref.load %memA2_cons_buff_0[%43] : memref<768xbf16>
      memref.store %45, %memC2_buff_0[%43] : memref<768xbf16>
      %46 = arith.addi %43, %c1_40 : index
      cf.br ^bb30(%46 : index)
    ^bb32:  // pred: ^bb30
      aie.use_lock(%memA2_cons_prod_lock, Release, 1)
      aie.use_lock(%memC2_cons_lock, Release, 1)
      aie.use_lock(%memC2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_41 = arith.constant 0 : index
      %c768_42 = arith.constant 768 : index
      %c1_43 = arith.constant 1 : index
      %c2_44 = arith.constant 2 : index
      cf.br ^bb33(%c0_41 : index)
    ^bb33(%47: index):  // 2 preds: ^bb32, ^bb34
      %48 = arith.cmpi slt, %47, %c768_42 : index
      cf.cond_br %48, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %49 = memref.load %memA2_cons_buff_1[%47] : memref<768xbf16>
      memref.store %49, %memC2_buff_1[%47] : memref<768xbf16>
      %c1_45 = arith.constant 1 : index
      %50 = arith.addi %47, %c1_43 : index
      %51 = memref.load %memA2_cons_buff_1[%50] : memref<768xbf16>
      memref.store %51, %memC2_buff_1[%50] : memref<768xbf16>
      %52 = arith.addi %47, %c2_44 : index
      cf.br ^bb33(%52 : index)
    ^bb35:  // pred: ^bb33
      aie.use_lock(%memA2_cons_prod_lock, Release, 1)
      aie.use_lock(%memC2_cons_lock, Release, 1)
      %53 = arith.addi %41, %c2_37 : index
      cf.br ^bb28(%53 : index)
    ^bb36:  // pred: ^bb28
      aie.use_lock(%memC2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA2_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_46 = arith.constant 0 : index
      %c768_47 = arith.constant 768 : index
      %c1_48 = arith.constant 1 : index
      %c2_49 = arith.constant 2 : index
      cf.br ^bb37(%c0_46 : index)
    ^bb37(%54: index):  // 2 preds: ^bb36, ^bb38
      %55 = arith.cmpi slt, %54, %c768_47 : index
      cf.cond_br %55, ^bb38, ^bb39
    ^bb38:  // pred: ^bb37
      %56 = memref.load %memA2_cons_buff_0[%54] : memref<768xbf16>
      memref.store %56, %memC2_buff_0[%54] : memref<768xbf16>
      %c1_50 = arith.constant 1 : index
      %57 = arith.addi %54, %c1_48 : index
      %58 = memref.load %memA2_cons_buff_0[%57] : memref<768xbf16>
      memref.store %58, %memC2_buff_0[%57] : memref<768xbf16>
      %59 = arith.addi %54, %c2_49 : index
      cf.br ^bb37(%59 : index)
    ^bb39:  // pred: ^bb37
      aie.use_lock(%memA2_cons_prod_lock, Release, 1)
      aie.use_lock(%memC2_cons_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_3_2 = aie.core(%tile_3_2) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb26
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb27
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c5 = arith.constant 5 : index
      %c1_1 = arith.constant 1 : index
      %c4 = arith.constant 4 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c4 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memC3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c768 = arith.constant 768 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_3 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c768 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %memA3_cons_buff_0[%4] : memref<768xbf16>
      memref.store %6, %memC3_buff_0[%4] : memref<768xbf16>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%memA3_cons_prod_lock, Release, 1)
      aie.use_lock(%memC3_cons_lock, Release, 1)
      aie.use_lock(%memC3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c768_6 = arith.constant 768 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%8: index):  // 2 preds: ^bb7, ^bb9
      %9 = arith.cmpi slt, %8, %c768_6 : index
      cf.cond_br %9, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      %10 = memref.load %memA3_cons_buff_1[%8] : memref<768xbf16>
      memref.store %10, %memC3_buff_1[%8] : memref<768xbf16>
      %c1_9 = arith.constant 1 : index
      %11 = arith.addi %8, %c1_7 : index
      %12 = memref.load %memA3_cons_buff_1[%11] : memref<768xbf16>
      memref.store %12, %memC3_buff_1[%11] : memref<768xbf16>
      %13 = arith.addi %8, %c2_8 : index
      cf.br ^bb8(%13 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%memA3_cons_prod_lock, Release, 1)
      aie.use_lock(%memC3_cons_lock, Release, 1)
      %14 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%14 : index)
    ^bb11:  // pred: ^bb3
      aie.use_lock(%memC3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_10 = arith.constant 0 : index
      %c768_11 = arith.constant 768 : index
      %c1_12 = arith.constant 1 : index
      %c2_13 = arith.constant 2 : index
      cf.br ^bb12(%c0_10 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c768_11 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      %17 = memref.load %memA3_cons_buff_0[%15] : memref<768xbf16>
      memref.store %17, %memC3_buff_0[%15] : memref<768xbf16>
      %c1_14 = arith.constant 1 : index
      %18 = arith.addi %15, %c1_12 : index
      %19 = memref.load %memA3_cons_buff_0[%18] : memref<768xbf16>
      memref.store %19, %memC3_buff_0[%18] : memref<768xbf16>
      %20 = arith.addi %15, %c2_13 : index
      cf.br ^bb12(%20 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%memA3_cons_prod_lock, Release, 1)
      aie.use_lock(%memC3_cons_lock, Release, 1)
      %c0_15 = arith.constant 0 : index
      %c5_16 = arith.constant 5 : index
      %c1_17 = arith.constant 1 : index
      %c4_18 = arith.constant 4 : index
      %c2_19 = arith.constant 2 : index
      cf.br ^bb15(%c0_15 : index)
    ^bb15(%21: index):  // 2 preds: ^bb14, ^bb22
      %22 = arith.cmpi slt, %21, %c4_18 : index
      cf.cond_br %22, ^bb16, ^bb23
    ^bb16:  // pred: ^bb15
      aie.use_lock(%memC3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_20 = arith.constant 0 : index
      %c768_21 = arith.constant 768 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb17(%c0_20 : index)
    ^bb17(%23: index):  // 2 preds: ^bb16, ^bb18
      %24 = arith.cmpi slt, %23, %c768_21 : index
      cf.cond_br %24, ^bb18, ^bb19
    ^bb18:  // pred: ^bb17
      %25 = memref.load %memA3_cons_buff_1[%23] : memref<768xbf16>
      memref.store %25, %memC3_buff_1[%23] : memref<768xbf16>
      %26 = arith.addi %23, %c1_22 : index
      cf.br ^bb17(%26 : index)
    ^bb19:  // pred: ^bb17
      aie.use_lock(%memA3_cons_prod_lock, Release, 1)
      aie.use_lock(%memC3_cons_lock, Release, 1)
      aie.use_lock(%memC3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c768_24 = arith.constant 768 : index
      %c1_25 = arith.constant 1 : index
      %c2_26 = arith.constant 2 : index
      cf.br ^bb20(%c0_23 : index)
    ^bb20(%27: index):  // 2 preds: ^bb19, ^bb21
      %28 = arith.cmpi slt, %27, %c768_24 : index
      cf.cond_br %28, ^bb21, ^bb22
    ^bb21:  // pred: ^bb20
      %29 = memref.load %memA3_cons_buff_0[%27] : memref<768xbf16>
      memref.store %29, %memC3_buff_0[%27] : memref<768xbf16>
      %c1_27 = arith.constant 1 : index
      %30 = arith.addi %27, %c1_25 : index
      %31 = memref.load %memA3_cons_buff_0[%30] : memref<768xbf16>
      memref.store %31, %memC3_buff_0[%30] : memref<768xbf16>
      %32 = arith.addi %27, %c2_26 : index
      cf.br ^bb20(%32 : index)
    ^bb22:  // pred: ^bb20
      aie.use_lock(%memA3_cons_prod_lock, Release, 1)
      aie.use_lock(%memC3_cons_lock, Release, 1)
      %33 = arith.addi %21, %c2_19 : index
      cf.br ^bb15(%33 : index)
    ^bb23:  // pred: ^bb15
      aie.use_lock(%memC3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_28 = arith.constant 0 : index
      %c768_29 = arith.constant 768 : index
      %c1_30 = arith.constant 1 : index
      %c2_31 = arith.constant 2 : index
      cf.br ^bb24(%c0_28 : index)
    ^bb24(%34: index):  // 2 preds: ^bb23, ^bb25
      %35 = arith.cmpi slt, %34, %c768_29 : index
      cf.cond_br %35, ^bb25, ^bb26
    ^bb25:  // pred: ^bb24
      %36 = memref.load %memA3_cons_buff_1[%34] : memref<768xbf16>
      memref.store %36, %memC3_buff_1[%34] : memref<768xbf16>
      %c1_32 = arith.constant 1 : index
      %37 = arith.addi %34, %c1_30 : index
      %38 = memref.load %memA3_cons_buff_1[%37] : memref<768xbf16>
      memref.store %38, %memC3_buff_1[%37] : memref<768xbf16>
      %39 = arith.addi %34, %c2_31 : index
      cf.br ^bb24(%39 : index)
    ^bb26:  // pred: ^bb24
      aie.use_lock(%memA3_cons_prod_lock, Release, 1)
      aie.use_lock(%memC3_cons_lock, Release, 1)
      %40 = arith.addi %0, %c2 : index
      cf.br ^bb1(%40 : index)
    ^bb27:  // pred: ^bb1
      %c0_33 = arith.constant 0 : index
      %c5_34 = arith.constant 5 : index
      %c1_35 = arith.constant 1 : index
      %c4_36 = arith.constant 4 : index
      %c2_37 = arith.constant 2 : index
      cf.br ^bb28(%c0_33 : index)
    ^bb28(%41: index):  // 2 preds: ^bb27, ^bb35
      %42 = arith.cmpi slt, %41, %c4_36 : index
      cf.cond_br %42, ^bb29, ^bb36
    ^bb29:  // pred: ^bb28
      aie.use_lock(%memC3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c768_39 = arith.constant 768 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb30(%c0_38 : index)
    ^bb30(%43: index):  // 2 preds: ^bb29, ^bb31
      %44 = arith.cmpi slt, %43, %c768_39 : index
      cf.cond_br %44, ^bb31, ^bb32
    ^bb31:  // pred: ^bb30
      %45 = memref.load %memA3_cons_buff_0[%43] : memref<768xbf16>
      memref.store %45, %memC3_buff_0[%43] : memref<768xbf16>
      %46 = arith.addi %43, %c1_40 : index
      cf.br ^bb30(%46 : index)
    ^bb32:  // pred: ^bb30
      aie.use_lock(%memA3_cons_prod_lock, Release, 1)
      aie.use_lock(%memC3_cons_lock, Release, 1)
      aie.use_lock(%memC3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_41 = arith.constant 0 : index
      %c768_42 = arith.constant 768 : index
      %c1_43 = arith.constant 1 : index
      %c2_44 = arith.constant 2 : index
      cf.br ^bb33(%c0_41 : index)
    ^bb33(%47: index):  // 2 preds: ^bb32, ^bb34
      %48 = arith.cmpi slt, %47, %c768_42 : index
      cf.cond_br %48, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %49 = memref.load %memA3_cons_buff_1[%47] : memref<768xbf16>
      memref.store %49, %memC3_buff_1[%47] : memref<768xbf16>
      %c1_45 = arith.constant 1 : index
      %50 = arith.addi %47, %c1_43 : index
      %51 = memref.load %memA3_cons_buff_1[%50] : memref<768xbf16>
      memref.store %51, %memC3_buff_1[%50] : memref<768xbf16>
      %52 = arith.addi %47, %c2_44 : index
      cf.br ^bb33(%52 : index)
    ^bb35:  // pred: ^bb33
      aie.use_lock(%memA3_cons_prod_lock, Release, 1)
      aie.use_lock(%memC3_cons_lock, Release, 1)
      %53 = arith.addi %41, %c2_37 : index
      cf.br ^bb28(%53 : index)
    ^bb36:  // pred: ^bb28
      aie.use_lock(%memC3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA3_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_46 = arith.constant 0 : index
      %c768_47 = arith.constant 768 : index
      %c1_48 = arith.constant 1 : index
      %c2_49 = arith.constant 2 : index
      cf.br ^bb37(%c0_46 : index)
    ^bb37(%54: index):  // 2 preds: ^bb36, ^bb38
      %55 = arith.cmpi slt, %54, %c768_47 : index
      cf.cond_br %55, ^bb38, ^bb39
    ^bb38:  // pred: ^bb37
      %56 = memref.load %memA3_cons_buff_0[%54] : memref<768xbf16>
      memref.store %56, %memC3_buff_0[%54] : memref<768xbf16>
      %c1_50 = arith.constant 1 : index
      %57 = arith.addi %54, %c1_48 : index
      %58 = memref.load %memA3_cons_buff_0[%57] : memref<768xbf16>
      memref.store %58, %memC3_buff_0[%57] : memref<768xbf16>
      %59 = arith.addi %54, %c2_49 : index
      cf.br ^bb37(%59 : index)
    ^bb39:  // pred: ^bb37
      aie.use_lock(%memA3_cons_prod_lock, Release, 1)
      aie.use_lock(%memC3_cons_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_3_3 = aie.core(%tile_3_3) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb26
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb27
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c5 = arith.constant 5 : index
      %c1_1 = arith.constant 1 : index
      %c4 = arith.constant 4 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c4 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memC4_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c768 = arith.constant 768 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_3 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c768 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %memA4_cons_buff_0[%4] : memref<768xbf16>
      memref.store %6, %memC4_buff_0[%4] : memref<768xbf16>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%memA4_cons_prod_lock, Release, 1)
      aie.use_lock(%memC4_cons_lock, Release, 1)
      aie.use_lock(%memC4_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c768_6 = arith.constant 768 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%8: index):  // 2 preds: ^bb7, ^bb9
      %9 = arith.cmpi slt, %8, %c768_6 : index
      cf.cond_br %9, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      %10 = memref.load %memA4_cons_buff_1[%8] : memref<768xbf16>
      memref.store %10, %memC4_buff_1[%8] : memref<768xbf16>
      %c1_9 = arith.constant 1 : index
      %11 = arith.addi %8, %c1_7 : index
      %12 = memref.load %memA4_cons_buff_1[%11] : memref<768xbf16>
      memref.store %12, %memC4_buff_1[%11] : memref<768xbf16>
      %13 = arith.addi %8, %c2_8 : index
      cf.br ^bb8(%13 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%memA4_cons_prod_lock, Release, 1)
      aie.use_lock(%memC4_cons_lock, Release, 1)
      %14 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%14 : index)
    ^bb11:  // pred: ^bb3
      aie.use_lock(%memC4_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_10 = arith.constant 0 : index
      %c768_11 = arith.constant 768 : index
      %c1_12 = arith.constant 1 : index
      %c2_13 = arith.constant 2 : index
      cf.br ^bb12(%c0_10 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c768_11 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      %17 = memref.load %memA4_cons_buff_0[%15] : memref<768xbf16>
      memref.store %17, %memC4_buff_0[%15] : memref<768xbf16>
      %c1_14 = arith.constant 1 : index
      %18 = arith.addi %15, %c1_12 : index
      %19 = memref.load %memA4_cons_buff_0[%18] : memref<768xbf16>
      memref.store %19, %memC4_buff_0[%18] : memref<768xbf16>
      %20 = arith.addi %15, %c2_13 : index
      cf.br ^bb12(%20 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%memA4_cons_prod_lock, Release, 1)
      aie.use_lock(%memC4_cons_lock, Release, 1)
      %c0_15 = arith.constant 0 : index
      %c5_16 = arith.constant 5 : index
      %c1_17 = arith.constant 1 : index
      %c4_18 = arith.constant 4 : index
      %c2_19 = arith.constant 2 : index
      cf.br ^bb15(%c0_15 : index)
    ^bb15(%21: index):  // 2 preds: ^bb14, ^bb22
      %22 = arith.cmpi slt, %21, %c4_18 : index
      cf.cond_br %22, ^bb16, ^bb23
    ^bb16:  // pred: ^bb15
      aie.use_lock(%memC4_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_20 = arith.constant 0 : index
      %c768_21 = arith.constant 768 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb17(%c0_20 : index)
    ^bb17(%23: index):  // 2 preds: ^bb16, ^bb18
      %24 = arith.cmpi slt, %23, %c768_21 : index
      cf.cond_br %24, ^bb18, ^bb19
    ^bb18:  // pred: ^bb17
      %25 = memref.load %memA4_cons_buff_1[%23] : memref<768xbf16>
      memref.store %25, %memC4_buff_1[%23] : memref<768xbf16>
      %26 = arith.addi %23, %c1_22 : index
      cf.br ^bb17(%26 : index)
    ^bb19:  // pred: ^bb17
      aie.use_lock(%memA4_cons_prod_lock, Release, 1)
      aie.use_lock(%memC4_cons_lock, Release, 1)
      aie.use_lock(%memC4_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c768_24 = arith.constant 768 : index
      %c1_25 = arith.constant 1 : index
      %c2_26 = arith.constant 2 : index
      cf.br ^bb20(%c0_23 : index)
    ^bb20(%27: index):  // 2 preds: ^bb19, ^bb21
      %28 = arith.cmpi slt, %27, %c768_24 : index
      cf.cond_br %28, ^bb21, ^bb22
    ^bb21:  // pred: ^bb20
      %29 = memref.load %memA4_cons_buff_0[%27] : memref<768xbf16>
      memref.store %29, %memC4_buff_0[%27] : memref<768xbf16>
      %c1_27 = arith.constant 1 : index
      %30 = arith.addi %27, %c1_25 : index
      %31 = memref.load %memA4_cons_buff_0[%30] : memref<768xbf16>
      memref.store %31, %memC4_buff_0[%30] : memref<768xbf16>
      %32 = arith.addi %27, %c2_26 : index
      cf.br ^bb20(%32 : index)
    ^bb22:  // pred: ^bb20
      aie.use_lock(%memA4_cons_prod_lock, Release, 1)
      aie.use_lock(%memC4_cons_lock, Release, 1)
      %33 = arith.addi %21, %c2_19 : index
      cf.br ^bb15(%33 : index)
    ^bb23:  // pred: ^bb15
      aie.use_lock(%memC4_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_28 = arith.constant 0 : index
      %c768_29 = arith.constant 768 : index
      %c1_30 = arith.constant 1 : index
      %c2_31 = arith.constant 2 : index
      cf.br ^bb24(%c0_28 : index)
    ^bb24(%34: index):  // 2 preds: ^bb23, ^bb25
      %35 = arith.cmpi slt, %34, %c768_29 : index
      cf.cond_br %35, ^bb25, ^bb26
    ^bb25:  // pred: ^bb24
      %36 = memref.load %memA4_cons_buff_1[%34] : memref<768xbf16>
      memref.store %36, %memC4_buff_1[%34] : memref<768xbf16>
      %c1_32 = arith.constant 1 : index
      %37 = arith.addi %34, %c1_30 : index
      %38 = memref.load %memA4_cons_buff_1[%37] : memref<768xbf16>
      memref.store %38, %memC4_buff_1[%37] : memref<768xbf16>
      %39 = arith.addi %34, %c2_31 : index
      cf.br ^bb24(%39 : index)
    ^bb26:  // pred: ^bb24
      aie.use_lock(%memA4_cons_prod_lock, Release, 1)
      aie.use_lock(%memC4_cons_lock, Release, 1)
      %40 = arith.addi %0, %c2 : index
      cf.br ^bb1(%40 : index)
    ^bb27:  // pred: ^bb1
      %c0_33 = arith.constant 0 : index
      %c5_34 = arith.constant 5 : index
      %c1_35 = arith.constant 1 : index
      %c4_36 = arith.constant 4 : index
      %c2_37 = arith.constant 2 : index
      cf.br ^bb28(%c0_33 : index)
    ^bb28(%41: index):  // 2 preds: ^bb27, ^bb35
      %42 = arith.cmpi slt, %41, %c4_36 : index
      cf.cond_br %42, ^bb29, ^bb36
    ^bb29:  // pred: ^bb28
      aie.use_lock(%memC4_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c768_39 = arith.constant 768 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb30(%c0_38 : index)
    ^bb30(%43: index):  // 2 preds: ^bb29, ^bb31
      %44 = arith.cmpi slt, %43, %c768_39 : index
      cf.cond_br %44, ^bb31, ^bb32
    ^bb31:  // pred: ^bb30
      %45 = memref.load %memA4_cons_buff_0[%43] : memref<768xbf16>
      memref.store %45, %memC4_buff_0[%43] : memref<768xbf16>
      %46 = arith.addi %43, %c1_40 : index
      cf.br ^bb30(%46 : index)
    ^bb32:  // pred: ^bb30
      aie.use_lock(%memA4_cons_prod_lock, Release, 1)
      aie.use_lock(%memC4_cons_lock, Release, 1)
      aie.use_lock(%memC4_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_41 = arith.constant 0 : index
      %c768_42 = arith.constant 768 : index
      %c1_43 = arith.constant 1 : index
      %c2_44 = arith.constant 2 : index
      cf.br ^bb33(%c0_41 : index)
    ^bb33(%47: index):  // 2 preds: ^bb32, ^bb34
      %48 = arith.cmpi slt, %47, %c768_42 : index
      cf.cond_br %48, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %49 = memref.load %memA4_cons_buff_1[%47] : memref<768xbf16>
      memref.store %49, %memC4_buff_1[%47] : memref<768xbf16>
      %c1_45 = arith.constant 1 : index
      %50 = arith.addi %47, %c1_43 : index
      %51 = memref.load %memA4_cons_buff_1[%50] : memref<768xbf16>
      memref.store %51, %memC4_buff_1[%50] : memref<768xbf16>
      %52 = arith.addi %47, %c2_44 : index
      cf.br ^bb33(%52 : index)
    ^bb35:  // pred: ^bb33
      aie.use_lock(%memA4_cons_prod_lock, Release, 1)
      aie.use_lock(%memC4_cons_lock, Release, 1)
      %53 = arith.addi %41, %c2_37 : index
      cf.br ^bb28(%53 : index)
    ^bb36:  // pred: ^bb28
      aie.use_lock(%memC4_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA4_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_46 = arith.constant 0 : index
      %c768_47 = arith.constant 768 : index
      %c1_48 = arith.constant 1 : index
      %c2_49 = arith.constant 2 : index
      cf.br ^bb37(%c0_46 : index)
    ^bb37(%54: index):  // 2 preds: ^bb36, ^bb38
      %55 = arith.cmpi slt, %54, %c768_47 : index
      cf.cond_br %55, ^bb38, ^bb39
    ^bb38:  // pred: ^bb37
      %56 = memref.load %memA4_cons_buff_0[%54] : memref<768xbf16>
      memref.store %56, %memC4_buff_0[%54] : memref<768xbf16>
      %c1_50 = arith.constant 1 : index
      %57 = arith.addi %54, %c1_48 : index
      %58 = memref.load %memA4_cons_buff_0[%57] : memref<768xbf16>
      memref.store %58, %memC4_buff_0[%57] : memref<768xbf16>
      %59 = arith.addi %54, %c2_49 : index
      cf.br ^bb37(%59 : index)
    ^bb39:  // pred: ^bb37
      aie.use_lock(%memA4_cons_prod_lock, Release, 1)
      aie.use_lock(%memC4_cons_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      %c9223372036854775806 = arith.constant 9223372036854775806 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb26
      %1 = arith.cmpi slt, %0, %c9223372036854775806 : index
      cf.cond_br %1, ^bb2, ^bb27
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c5 = arith.constant 5 : index
      %c1_1 = arith.constant 1 : index
      %c4 = arith.constant 4 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb10
      %3 = arith.cmpi slt, %2, %c4 : index
      cf.cond_br %3, ^bb4, ^bb11
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memC5_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c768 = arith.constant 768 : index
      %c1_4 = arith.constant 1 : index
      cf.br ^bb5(%c0_3 : index)
    ^bb5(%4: index):  // 2 preds: ^bb4, ^bb6
      %5 = arith.cmpi slt, %4, %c768 : index
      cf.cond_br %5, ^bb6, ^bb7
    ^bb6:  // pred: ^bb5
      %6 = memref.load %memA5_cons_buff_0[%4] : memref<768xbf16>
      memref.store %6, %memC5_buff_0[%4] : memref<768xbf16>
      %7 = arith.addi %4, %c1_4 : index
      cf.br ^bb5(%7 : index)
    ^bb7:  // pred: ^bb5
      aie.use_lock(%memA5_cons_prod_lock, Release, 1)
      aie.use_lock(%memC5_cons_lock, Release, 1)
      aie.use_lock(%memC5_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_5 = arith.constant 0 : index
      %c768_6 = arith.constant 768 : index
      %c1_7 = arith.constant 1 : index
      %c2_8 = arith.constant 2 : index
      cf.br ^bb8(%c0_5 : index)
    ^bb8(%8: index):  // 2 preds: ^bb7, ^bb9
      %9 = arith.cmpi slt, %8, %c768_6 : index
      cf.cond_br %9, ^bb9, ^bb10
    ^bb9:  // pred: ^bb8
      %10 = memref.load %memA5_cons_buff_1[%8] : memref<768xbf16>
      memref.store %10, %memC5_buff_1[%8] : memref<768xbf16>
      %c1_9 = arith.constant 1 : index
      %11 = arith.addi %8, %c1_7 : index
      %12 = memref.load %memA5_cons_buff_1[%11] : memref<768xbf16>
      memref.store %12, %memC5_buff_1[%11] : memref<768xbf16>
      %13 = arith.addi %8, %c2_8 : index
      cf.br ^bb8(%13 : index)
    ^bb10:  // pred: ^bb8
      aie.use_lock(%memA5_cons_prod_lock, Release, 1)
      aie.use_lock(%memC5_cons_lock, Release, 1)
      %14 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%14 : index)
    ^bb11:  // pred: ^bb3
      aie.use_lock(%memC5_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_10 = arith.constant 0 : index
      %c768_11 = arith.constant 768 : index
      %c1_12 = arith.constant 1 : index
      %c2_13 = arith.constant 2 : index
      cf.br ^bb12(%c0_10 : index)
    ^bb12(%15: index):  // 2 preds: ^bb11, ^bb13
      %16 = arith.cmpi slt, %15, %c768_11 : index
      cf.cond_br %16, ^bb13, ^bb14
    ^bb13:  // pred: ^bb12
      %17 = memref.load %memA5_cons_buff_0[%15] : memref<768xbf16>
      memref.store %17, %memC5_buff_0[%15] : memref<768xbf16>
      %c1_14 = arith.constant 1 : index
      %18 = arith.addi %15, %c1_12 : index
      %19 = memref.load %memA5_cons_buff_0[%18] : memref<768xbf16>
      memref.store %19, %memC5_buff_0[%18] : memref<768xbf16>
      %20 = arith.addi %15, %c2_13 : index
      cf.br ^bb12(%20 : index)
    ^bb14:  // pred: ^bb12
      aie.use_lock(%memA5_cons_prod_lock, Release, 1)
      aie.use_lock(%memC5_cons_lock, Release, 1)
      %c0_15 = arith.constant 0 : index
      %c5_16 = arith.constant 5 : index
      %c1_17 = arith.constant 1 : index
      %c4_18 = arith.constant 4 : index
      %c2_19 = arith.constant 2 : index
      cf.br ^bb15(%c0_15 : index)
    ^bb15(%21: index):  // 2 preds: ^bb14, ^bb22
      %22 = arith.cmpi slt, %21, %c4_18 : index
      cf.cond_br %22, ^bb16, ^bb23
    ^bb16:  // pred: ^bb15
      aie.use_lock(%memC5_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_20 = arith.constant 0 : index
      %c768_21 = arith.constant 768 : index
      %c1_22 = arith.constant 1 : index
      cf.br ^bb17(%c0_20 : index)
    ^bb17(%23: index):  // 2 preds: ^bb16, ^bb18
      %24 = arith.cmpi slt, %23, %c768_21 : index
      cf.cond_br %24, ^bb18, ^bb19
    ^bb18:  // pred: ^bb17
      %25 = memref.load %memA5_cons_buff_1[%23] : memref<768xbf16>
      memref.store %25, %memC5_buff_1[%23] : memref<768xbf16>
      %26 = arith.addi %23, %c1_22 : index
      cf.br ^bb17(%26 : index)
    ^bb19:  // pred: ^bb17
      aie.use_lock(%memA5_cons_prod_lock, Release, 1)
      aie.use_lock(%memC5_cons_lock, Release, 1)
      aie.use_lock(%memC5_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_23 = arith.constant 0 : index
      %c768_24 = arith.constant 768 : index
      %c1_25 = arith.constant 1 : index
      %c2_26 = arith.constant 2 : index
      cf.br ^bb20(%c0_23 : index)
    ^bb20(%27: index):  // 2 preds: ^bb19, ^bb21
      %28 = arith.cmpi slt, %27, %c768_24 : index
      cf.cond_br %28, ^bb21, ^bb22
    ^bb21:  // pred: ^bb20
      %29 = memref.load %memA5_cons_buff_0[%27] : memref<768xbf16>
      memref.store %29, %memC5_buff_0[%27] : memref<768xbf16>
      %c1_27 = arith.constant 1 : index
      %30 = arith.addi %27, %c1_25 : index
      %31 = memref.load %memA5_cons_buff_0[%30] : memref<768xbf16>
      memref.store %31, %memC5_buff_0[%30] : memref<768xbf16>
      %32 = arith.addi %27, %c2_26 : index
      cf.br ^bb20(%32 : index)
    ^bb22:  // pred: ^bb20
      aie.use_lock(%memA5_cons_prod_lock, Release, 1)
      aie.use_lock(%memC5_cons_lock, Release, 1)
      %33 = arith.addi %21, %c2_19 : index
      cf.br ^bb15(%33 : index)
    ^bb23:  // pred: ^bb15
      aie.use_lock(%memC5_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_28 = arith.constant 0 : index
      %c768_29 = arith.constant 768 : index
      %c1_30 = arith.constant 1 : index
      %c2_31 = arith.constant 2 : index
      cf.br ^bb24(%c0_28 : index)
    ^bb24(%34: index):  // 2 preds: ^bb23, ^bb25
      %35 = arith.cmpi slt, %34, %c768_29 : index
      cf.cond_br %35, ^bb25, ^bb26
    ^bb25:  // pred: ^bb24
      %36 = memref.load %memA5_cons_buff_1[%34] : memref<768xbf16>
      memref.store %36, %memC5_buff_1[%34] : memref<768xbf16>
      %c1_32 = arith.constant 1 : index
      %37 = arith.addi %34, %c1_30 : index
      %38 = memref.load %memA5_cons_buff_1[%37] : memref<768xbf16>
      memref.store %38, %memC5_buff_1[%37] : memref<768xbf16>
      %39 = arith.addi %34, %c2_31 : index
      cf.br ^bb24(%39 : index)
    ^bb26:  // pred: ^bb24
      aie.use_lock(%memA5_cons_prod_lock, Release, 1)
      aie.use_lock(%memC5_cons_lock, Release, 1)
      %40 = arith.addi %0, %c2 : index
      cf.br ^bb1(%40 : index)
    ^bb27:  // pred: ^bb1
      %c0_33 = arith.constant 0 : index
      %c5_34 = arith.constant 5 : index
      %c1_35 = arith.constant 1 : index
      %c4_36 = arith.constant 4 : index
      %c2_37 = arith.constant 2 : index
      cf.br ^bb28(%c0_33 : index)
    ^bb28(%41: index):  // 2 preds: ^bb27, ^bb35
      %42 = arith.cmpi slt, %41, %c4_36 : index
      cf.cond_br %42, ^bb29, ^bb36
    ^bb29:  // pred: ^bb28
      aie.use_lock(%memC5_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_38 = arith.constant 0 : index
      %c768_39 = arith.constant 768 : index
      %c1_40 = arith.constant 1 : index
      cf.br ^bb30(%c0_38 : index)
    ^bb30(%43: index):  // 2 preds: ^bb29, ^bb31
      %44 = arith.cmpi slt, %43, %c768_39 : index
      cf.cond_br %44, ^bb31, ^bb32
    ^bb31:  // pred: ^bb30
      %45 = memref.load %memA5_cons_buff_0[%43] : memref<768xbf16>
      memref.store %45, %memC5_buff_0[%43] : memref<768xbf16>
      %46 = arith.addi %43, %c1_40 : index
      cf.br ^bb30(%46 : index)
    ^bb32:  // pred: ^bb30
      aie.use_lock(%memA5_cons_prod_lock, Release, 1)
      aie.use_lock(%memC5_cons_lock, Release, 1)
      aie.use_lock(%memC5_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_41 = arith.constant 0 : index
      %c768_42 = arith.constant 768 : index
      %c1_43 = arith.constant 1 : index
      %c2_44 = arith.constant 2 : index
      cf.br ^bb33(%c0_41 : index)
    ^bb33(%47: index):  // 2 preds: ^bb32, ^bb34
      %48 = arith.cmpi slt, %47, %c768_42 : index
      cf.cond_br %48, ^bb34, ^bb35
    ^bb34:  // pred: ^bb33
      %49 = memref.load %memA5_cons_buff_1[%47] : memref<768xbf16>
      memref.store %49, %memC5_buff_1[%47] : memref<768xbf16>
      %c1_45 = arith.constant 1 : index
      %50 = arith.addi %47, %c1_43 : index
      %51 = memref.load %memA5_cons_buff_1[%50] : memref<768xbf16>
      memref.store %51, %memC5_buff_1[%50] : memref<768xbf16>
      %52 = arith.addi %47, %c2_44 : index
      cf.br ^bb33(%52 : index)
    ^bb35:  // pred: ^bb33
      aie.use_lock(%memA5_cons_prod_lock, Release, 1)
      aie.use_lock(%memC5_cons_lock, Release, 1)
      %53 = arith.addi %41, %c2_37 : index
      cf.br ^bb28(%53 : index)
    ^bb36:  // pred: ^bb28
      aie.use_lock(%memC5_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA5_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_46 = arith.constant 0 : index
      %c768_47 = arith.constant 768 : index
      %c1_48 = arith.constant 1 : index
      %c2_49 = arith.constant 2 : index
      cf.br ^bb37(%c0_46 : index)
    ^bb37(%54: index):  // 2 preds: ^bb36, ^bb38
      %55 = arith.cmpi slt, %54, %c768_47 : index
      cf.cond_br %55, ^bb38, ^bb39
    ^bb38:  // pred: ^bb37
      %56 = memref.load %memA5_cons_buff_0[%54] : memref<768xbf16>
      memref.store %56, %memC5_buff_0[%54] : memref<768xbf16>
      %c1_50 = arith.constant 1 : index
      %57 = arith.addi %54, %c1_48 : index
      %58 = memref.load %memA5_cons_buff_0[%57] : memref<768xbf16>
      memref.store %58, %memC5_buff_0[%57] : memref<768xbf16>
      %59 = arith.addi %54, %c2_49 : index
      cf.br ^bb37(%59 : index)
    ^bb39:  // pred: ^bb37
      aie.use_lock(%memA5_cons_prod_lock, Release, 1)
      aie.use_lock(%memC5_cons_lock, Release, 1)
      aie.end
    } {link_with = "passthrough.o"}
    aiex.runtime_sequence(%arg0: memref<23040xbf16>, %arg1: memref<23040xbf16>, %arg2: memref<23040xbf16>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 23040][0, 0, 0, 1]) {id = 1 : i64, issue_token = true, metadata = @inA} : memref<23040xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 23040][0, 0, 0, 1]) {id = 0 : i64, metadata = @outC} : memref<23040xbf16>
      aiex.npu.dma_wait {symbol = @inA}
      aiex.npu.dma_wait {symbol = @outC}
    }
    aie.shim_dma_allocation @inA(MM2S, 0, 0)
    %memtile_dma_0_1 = aie.memtile_dma(%mem_tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%inA_cons_prod_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%inA_cons_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%inA_cons_cons_lock, Release, 6)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%inA_cons_prod_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%inA_cons_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%inA_cons_cons_lock, Release, 6)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_0 : memref<4608xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_1 : memref<4608xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_0 : memref<4608xbf16>, 768, 768) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_1 : memref<4608xbf16>, 768, 768) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_0 : memref<4608xbf16>, 1536, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_1 : memref<4608xbf16>, 1536, 768) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(MM2S, 3, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_0 : memref<4608xbf16>, 2304, 768) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_1 : memref<4608xbf16>, 2304, 768) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(MM2S, 4, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_0 : memref<4608xbf16>, 3072, 768) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_1 : memref<4608xbf16>, 3072, 768) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(MM2S, 5, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_0 : memref<4608xbf16>, 3840, 768) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_1 : memref<4608xbf16>, 3840, 768) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA0_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA0_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memC0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC0_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memC0_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memC0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC0_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memC0_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_2_3 = aie.mem(%tile_2_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA1_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA1_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memC1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC1_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memC1_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memC1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC1_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memC1_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_2_4 = aie.mem(%tile_2_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA2_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA2_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memC2_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC2_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memC2_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memC2_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC2_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memC2_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA3_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA3_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memC3_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC3_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memC3_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memC3_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC3_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memC3_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_3 = aie.mem(%tile_3_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA4_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA4_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA4_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA4_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memC4_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC4_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memC4_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memC4_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC4_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memC4_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_4 = aie.mem(%tile_3_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA5_cons_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA5_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA5_cons_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA5_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memC5_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC5_buff_0 : memref<768xbf16>, 0, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memC5_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memC5_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC5_buff_1 : memref<768xbf16>, 0, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memC5_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_0 : memref<4608xbf16>, 0, 768) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_1 : memref<4608xbf16>, 0, 768) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_0 : memref<4608xbf16>, 768, 768) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_1 : memref<4608xbf16>, 768, 768) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(S2MM, 2, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_0 : memref<4608xbf16>, 1536, 768) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_1 : memref<4608xbf16>, 1536, 768) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(S2MM, 3, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_0 : memref<4608xbf16>, 2304, 768) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_1 : memref<4608xbf16>, 2304, 768) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(S2MM, 4, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_0 : memref<4608xbf16>, 3072, 768) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_1 : memref<4608xbf16>, 3072, 768) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 5, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_0 : memref<4608xbf16>, 3840, 768) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_1 : memref<4608xbf16>, 3840, 768) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(MM2S, 0, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%outC_cons_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%outC_buff_0 : memref<4608xbf16>, 0, 4608) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%outC_prod_lock, Release, 6)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%outC_cons_lock, AcquireGreaterEqual, 6)
      aie.dma_bd(%outC_buff_1 : memref<4608xbf16>, 0, 4608) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%outC_prod_lock, Release, 6)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      aie.end
    }
    aie.shim_dma_allocation @outC(S2MM, 0, 1)
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_0_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_0_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%shim_noc_tile_1_0, TileControl : 0>
      aie.packet_dest<%shim_noc_tile_1_0, South : 0>
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
    aie.wire(%switchbox_2_0 : East, %switchbox_3_0 : West)
    aie.wire(%switchbox_2_2 : East, %switchbox_3_2 : West)
    aie.wire(%tile_3_2 : Core, %switchbox_3_2 : Core)
    aie.wire(%tile_3_2 : DMA, %switchbox_3_2 : DMA)
    aie.wire(%switchbox_2_3 : East, %switchbox_3_3 : West)
    aie.wire(%tile_3_3 : Core, %switchbox_3_3 : Core)
    aie.wire(%tile_3_3 : DMA, %switchbox_3_3 : DMA)
    aie.wire(%switchbox_3_2 : North, %switchbox_3_3 : South)
    aie.wire(%switchbox_2_4 : East, %switchbox_3_4 : West)
    aie.wire(%tile_3_4 : Core, %switchbox_3_4 : Core)
    aie.wire(%tile_3_4 : DMA, %switchbox_3_4 : DMA)
    aie.wire(%switchbox_3_3 : North, %switchbox_3_4 : South)
  }
}

