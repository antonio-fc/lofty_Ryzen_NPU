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
    memref.global "public" @w_cons : memref<2xbf16>
    memref.global "public" @w : memref<2xbf16>
    memref.global "public" @v_cons : memref<2xbf16>
    memref.global "public" @v : memref<2xbf16>
    memref.global "public" @u_cons : memref<2xbf16>
    memref.global "public" @u : memref<2xbf16>
    memref.global "public" @visC_cons : memref<2xbf16>
    memref.global "public" @visC : memref<2xbf16>
    memref.global "public" @visR_cons : memref<2xbf16>
    memref.global "public" @visR : memref<2xbf16>
    memref.global "public" @in3_cons : memref<6xbf16>
    memref.global "public" @in3 : memref<6xbf16>
    memref.global "public" @in2_cons : memref<6xbf16>
    memref.global "public" @in2 : memref<6xbf16>
    memref.global "public" @in1_cons : memref<4xbf16>
    memref.global "public" @in1 : memref<4xbf16>
    memref.global "public" @in0_cons : memref<2xbf16>
    memref.global "public" @in0 : memref<2xbf16>
    func.func private @vector_scale(memref<2xbf16>, memref<2xbf16>, memref<2xbf16>, i32)
    func.func private @passthrough(memref<2xbf16>, memref<2xbf16>, i32)
    func.func private @vector_add(memref<2xbf16>, memref<2xbf16>, memref<2xbf16>, i32)
    func.func private @vector_mult(memref<2xbf16>, memref<2xbf16>, memref<2xbf16>, i32)
    func.func private @mean(memref<2xbf16>, memref<2xbf16>, i32, i32)
    func.func private @sin_float_1024(memref<2xbf16>, memref<2xbf16>, i32)
    func.func private @cos_float_1024(memref<2xbf16>, memref<2xbf16>, i32)
    func.func private @vector_sub(memref<2xbf16>, memref<2xbf16>, memref<2xbf16>, i32)
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
    %out_buff_0 = aie.buffer(%tile_3_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "out_buff_0"} : memref<2xbf16> 
    %out_buff_1 = aie.buffer(%tile_3_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "out_buff_1"} : memref<2xbf16> 
    %out_prod_lock = aie.lock(%tile_3_2, 0) {init = 2 : i32, sym_name = "out_prod_lock"}
    %out_cons_lock = aie.lock(%tile_3_2, 1) {init = 0 : i32, sym_name = "out_cons_lock"}
    %n_cons_buff_0 = aie.buffer(%tile_2_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "n_cons_buff_0"} : memref<2xbf16> 
    %n_cons_buff_1 = aie.buffer(%tile_2_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "n_cons_buff_1"} : memref<2xbf16> 
    %n_cons_prod_lock = aie.lock(%tile_2_2, 2) {init = 2 : i32, sym_name = "n_cons_prod_lock"}
    %n_cons_cons_lock = aie.lock(%tile_2_2, 3) {init = 0 : i32, sym_name = "n_cons_cons_lock"}
    %m_cons_buff_0 = aie.buffer(%tile_1_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "m_cons_buff_0"} : memref<2xbf16> 
    %m_cons_buff_1 = aie.buffer(%tile_1_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "m_cons_buff_1"} : memref<2xbf16> 
    %m_cons_prod_lock = aie.lock(%tile_1_2, 2) {init = 2 : i32, sym_name = "m_cons_prod_lock"}
    %m_cons_cons_lock = aie.lock(%tile_1_2, 3) {init = 0 : i32, sym_name = "m_cons_cons_lock"}
    %l_cons_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "l_cons_buff_0"} : memref<2xbf16> 
    %l_cons_buff_1 = aie.buffer(%tile_0_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "l_cons_buff_1"} : memref<2xbf16> 
    %l_cons_prod_lock = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "l_cons_prod_lock"}
    %l_cons_cons_lock = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "l_cons_cons_lock"}
    %w_cons_buff_0 = aie.buffer(%tile_2_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "w_cons_buff_0"} : memref<2xbf16> 
    %w_cons_buff_1 = aie.buffer(%tile_2_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "w_cons_buff_1"} : memref<2xbf16> 
    %w_cons_prod_lock = aie.lock(%tile_2_2, 0) {init = 2 : i32, sym_name = "w_cons_prod_lock"}
    %w_cons_cons_lock = aie.lock(%tile_2_2, 1) {init = 0 : i32, sym_name = "w_cons_cons_lock"}
    %v_cons_buff_0 = aie.buffer(%tile_1_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "v_cons_buff_0"} : memref<2xbf16> 
    %v_cons_buff_1 = aie.buffer(%tile_1_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "v_cons_buff_1"} : memref<2xbf16> 
    %v_cons_prod_lock = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "v_cons_prod_lock"}
    %v_cons_cons_lock = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "v_cons_cons_lock"}
    %u_cons_buff_0 = aie.buffer(%tile_0_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "u_cons_buff_0"} : memref<2xbf16> 
    %u_cons_buff_1 = aie.buffer(%tile_0_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "u_cons_buff_1"} : memref<2xbf16> 
    %u_cons_prod_lock = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "u_cons_prod_lock"}
    %u_cons_cons_lock = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "u_cons_cons_lock"}
    %visC_cons_buff_0 = aie.buffer(%tile_3_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "visC_cons_buff_0"} : memref<2xbf16> 
    %visC_cons_buff_1 = aie.buffer(%tile_3_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "visC_cons_buff_1"} : memref<2xbf16> 
    %visC_cons_prod_lock = aie.lock(%tile_3_5, 0) {init = 2 : i32, sym_name = "visC_cons_prod_lock"}
    %visC_cons_cons_lock = aie.lock(%tile_3_5, 1) {init = 0 : i32, sym_name = "visC_cons_cons_lock"}
    %visR_cons_buff_0 = aie.buffer(%tile_3_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "visR_cons_buff_0"} : memref<2xbf16> 
    %visR_cons_buff_1 = aie.buffer(%tile_3_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "visR_cons_buff_1"} : memref<2xbf16> 
    %visR_cons_prod_lock = aie.lock(%tile_3_4, 0) {init = 2 : i32, sym_name = "visR_cons_prod_lock"}
    %visR_cons_cons_lock = aie.lock(%tile_3_4, 1) {init = 0 : i32, sym_name = "visR_cons_cons_lock"}
    %in3_cons_buff_0 = aie.buffer(%mem_tile_2_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in3_cons_buff_0"} : memref<6xbf16> 
    %in3_cons_buff_1 = aie.buffer(%mem_tile_2_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in3_cons_buff_1"} : memref<6xbf16> 
    %in3_cons_prod_lock = aie.lock(%mem_tile_2_1, 0) {init = 6 : i32, sym_name = "in3_cons_prod_lock"}
    %in3_cons_cons_lock = aie.lock(%mem_tile_2_1, 1) {init = 0 : i32, sym_name = "in3_cons_cons_lock"}
    %in3_prod_lock = aie.lock(%shim_noc_tile_1_0, 2) {init = 1 : i32, sym_name = "in3_prod_lock"}
    %in3_cons_lock = aie.lock(%shim_noc_tile_1_0, 3) {init = 0 : i32, sym_name = "in3_cons_lock"}
    %in2_cons_buff_0 = aie.buffer(%mem_tile_1_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_0"} : memref<6xbf16> 
    %in2_cons_buff_1 = aie.buffer(%mem_tile_1_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in2_cons_buff_1"} : memref<6xbf16> 
    %in2_cons_prod_lock = aie.lock(%mem_tile_1_1, 0) {init = 6 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%mem_tile_1_1, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in2_prod_lock = aie.lock(%shim_noc_tile_1_0, 0) {init = 1 : i32, sym_name = "in2_prod_lock"}
    %in2_cons_lock = aie.lock(%shim_noc_tile_1_0, 1) {init = 0 : i32, sym_name = "in2_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%mem_tile_3_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in1_cons_buff_0"} : memref<4xbf16> 
    %in1_cons_buff_1 = aie.buffer(%mem_tile_3_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in1_cons_buff_1"} : memref<4xbf16> 
    %in1_cons_prod_lock = aie.lock(%mem_tile_3_1, 0) {init = 4 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%mem_tile_3_1, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in1_prod_lock = aie.lock(%shim_noc_tile_3_0, 0) {init = 1 : i32, sym_name = "in1_prod_lock"}
    %in1_cons_lock = aie.lock(%shim_noc_tile_3_0, 1) {init = 0 : i32, sym_name = "in1_cons_lock"}
    %in0_cons_buff_0 = aie.buffer(%tile_0_3) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_0"} : memref<2xbf16> 
    %in0_cons_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in0_cons_buff_1"} : memref<2xbf16> 
    %in0_cons_prod_lock = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "in0_cons_prod_lock"}
    %in0_cons_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "in0_cons_cons_lock"}
    %in0_prod_lock = aie.lock(%shim_noc_tile_0_0, 0) {init = 1 : i32, sym_name = "in0_prod_lock"}
    %in0_cons_lock = aie.lock(%shim_noc_tile_0_0, 1) {init = 0 : i32, sym_name = "in0_cons_lock"}
    aie.flow(%shim_noc_tile_0_0, DMA : 0, %tile_0_3, DMA : 0)
    aie.flow(%shim_noc_tile_3_0, DMA : 0, %mem_tile_3_1, DMA : 0)
    aie.flow(%shim_noc_tile_1_0, DMA : 0, %mem_tile_1_1, DMA : 0)
    aie.flow(%shim_noc_tile_1_0, DMA : 1, %mem_tile_2_1, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 0, %tile_3_4, DMA : 0)
    aie.flow(%mem_tile_3_1, DMA : 1, %tile_3_5, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 1, %tile_1_2, DMA : 0)
    aie.flow(%mem_tile_1_1, DMA : 2, %tile_2_2, DMA : 0)
    aie.flow(%mem_tile_2_1, DMA : 0, %tile_0_2, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 1, %tile_1_2, DMA : 1)
    aie.flow(%mem_tile_2_1, DMA : 2, %tile_2_2, DMA : 1)
    aie.flow(%tile_3_2, DMA : 0, %shim_noc_tile_2_0, DMA : 0)
    %core_0_2 = aie.core(%tile_0_2) {
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
      %c4608 = arith.constant 4608 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c4608 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%l_cons_prod_lock, Release, 1)
      aie.use_lock(%l_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c4608_4 = arith.constant 4608 : index
      %c1_5 = arith.constant 1 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb6(%c0_3 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c4608_4 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_6 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%l_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%l_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_7 = arith.constant 0 : index
      %c4608_8 = arith.constant 4608 : index
      %c1_9 = arith.constant 1 : index
      %c2_10 = arith.constant 2 : index
      cf.br ^bb10(%c0_7 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c4608_8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      aie.use_lock(%u_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%u_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_10 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%l_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
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
      aie.use_lock(%m_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c4608 = arith.constant 4608 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c4608 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%m_cons_prod_lock, Release, 1)
      aie.use_lock(%m_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c4608_4 = arith.constant 4608 : index
      %c1_5 = arith.constant 1 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb6(%c0_3 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c4608_4 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_6 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%m_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%m_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_7 = arith.constant 0 : index
      %c4608_8 = arith.constant 4608 : index
      %c1_9 = arith.constant 1 : index
      %c2_10 = arith.constant 2 : index
      cf.br ^bb10(%c0_7 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c4608_8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      aie.use_lock(%v_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%v_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_10 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%m_cons_prod_lock, Release, 1)
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
      aie.use_lock(%n_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_0 = arith.constant 0 : index
      %c4608 = arith.constant 4608 : index
      %c1_1 = arith.constant 1 : index
      %c2_2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c4608 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2_2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%n_cons_prod_lock, Release, 1)
      aie.use_lock(%n_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_3 = arith.constant 0 : index
      %c4608_4 = arith.constant 4608 : index
      %c1_5 = arith.constant 1 : index
      %c2_6 = arith.constant 2 : index
      cf.br ^bb6(%c0_3 : index)
    ^bb6(%5: index):  // 2 preds: ^bb5, ^bb7
      %6 = arith.cmpi slt, %5, %c4608_4 : index
      cf.cond_br %6, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %7 = arith.addi %5, %c2_6 : index
      cf.br ^bb6(%7 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%n_cons_prod_lock, Release, 1)
      %8 = arith.addi %0, %c2 : index
      cf.br ^bb1(%8 : index)
    ^bb9:  // pred: ^bb1
      aie.use_lock(%n_cons_cons_lock, AcquireGreaterEqual, 1)
      %c0_7 = arith.constant 0 : index
      %c4608_8 = arith.constant 4608 : index
      %c1_9 = arith.constant 1 : index
      %c2_10 = arith.constant 2 : index
      cf.br ^bb10(%c0_7 : index)
    ^bb10(%9: index):  // 2 preds: ^bb9, ^bb11
      %10 = arith.cmpi slt, %9, %c4608_8 : index
      cf.cond_br %10, ^bb11, ^bb12
    ^bb11:  // pred: ^bb10
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      aie.use_lock(%w_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%w_cons_prod_lock, Release, 1)
      %11 = arith.addi %9, %c2_10 : index
      cf.br ^bb10(%11 : index)
    ^bb12:  // pred: ^bb10
      aie.use_lock(%n_cons_prod_lock, Release, 1)
      aie.end
    } {link_with = "scale.o"}
    %core_3_5 = aie.core(%tile_3_5) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c4608 = arith.constant 4608 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c4608 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%visC_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%visC_cons_prod_lock, Release, 1)
      aie.use_lock(%visC_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%visC_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "vector_mult.o"}
    %core_3_4 = aie.core(%tile_3_4) {
      %c0 = arith.constant 0 : index
      %c9223372036854775807 = arith.constant 9223372036854775807 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c9223372036854775807 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      %c0_0 = arith.constant 0 : index
      %c4608 = arith.constant 4608 : index
      %c1_1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb3(%c0_0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c4608 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%visR_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%visR_cons_prod_lock, Release, 1)
      aie.use_lock(%visR_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%visR_cons_prod_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
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
    } {link_with = "mean.o"}
    aiex.runtime_sequence @sequence(%arg0: memref<2xbf16>, %arg1: memref<9216xbf16>, %arg2: memref<27648xbf16>, %arg3: memref<2xbf16>, %arg4: memref<9216xbf16>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<2xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 18432][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<9216xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 27648][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<27648xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg3[0, 0, 0, 0][1, 1, 1, 196608][0, 0, 0, 1]) {id = 4 : i64, metadata = @in3} : memref<2xbf16>
      aiex.npu.dma_memcpy_nd(0, 0, %arg4[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<9216xbf16>
      aiex.npu.dma_wait {symbol = @out}
    }
    aie.shim_dma_allocation @in0(MM2S, 0, 0)
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    aie.shim_dma_allocation @in1(MM2S, 0, 3)
    %memtile_dma_3_1 = aie.memtile_dma(%mem_tile_3_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 2)
      aie.dma_bd(%in1_cons_buff_0 : memref<4xbf16>, 0, 4) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 2)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 2)
      aie.dma_bd(%in1_cons_buff_1 : memref<4xbf16>, 0, 4) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 2)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<4xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<4xbf16>, 2, 2) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<4xbf16>, 2, 2) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      aie.end
    }
    aie.shim_dma_allocation @in2(MM2S, 0, 1)
    %memtile_dma_1_1 = aie.memtile_dma(%mem_tile_1_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 3)
      aie.dma_bd(%in2_cons_buff_0 : memref<6xbf16>, 0, 6) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 3)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 3)
      aie.dma_bd(%in2_cons_buff_1 : memref<6xbf16>, 0, 6) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 3)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<6xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<6xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<6xbf16>, 2, 2) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<6xbf16>, 2, 2) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<6xbf16>, 4, 2) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<6xbf16>, 4, 2) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      aie.end
    }
    aie.shim_dma_allocation @in3(MM2S, 1, 1)
    %memtile_dma_2_1 = aie.memtile_dma(%mem_tile_2_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in3_cons_prod_lock, AcquireGreaterEqual, 3)
      aie.dma_bd(%in3_cons_buff_0 : memref<6xbf16>, 0, 6) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in3_cons_cons_lock, Release, 3)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in3_cons_prod_lock, AcquireGreaterEqual, 3)
      aie.dma_bd(%in3_cons_buff_1 : memref<6xbf16>, 0, 6) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in3_cons_cons_lock, Release, 3)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<6xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_1 : memref<6xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<6xbf16>, 2, 2) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_1 : memref<6xbf16>, 2, 2) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<6xbf16>, 4, 2) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in3_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_1 : memref<6xbf16>, 4, 2) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in3_cons_prod_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      aie.end
    }
    %mem_3_4 = aie.mem(%tile_3_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%visR_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%visR_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%visR_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%visR_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%visR_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%visR_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    %mem_3_5 = aie.mem(%tile_3_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%visC_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%visC_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%visC_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%visC_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%visC_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%visC_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%u_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%u_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%u_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%u_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%u_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%u_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%l_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%l_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%l_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%l_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%l_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%l_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%v_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%v_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%v_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%v_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%v_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%v_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%m_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%m_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%m_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%m_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%m_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%m_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_2_2 = aie.mem(%tile_2_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%w_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%w_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%w_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%w_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%w_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%w_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(S2MM, 1, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%n_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%n_cons_buff_0 : memref<2xbf16>, 0, 2) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%n_cons_cons_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%n_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%n_cons_buff_1 : memref<2xbf16>, 0, 2) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%n_cons_cons_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_3_2 = aie.mem(%tile_3_2) {
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
