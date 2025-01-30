module {
  aie.device(npu1_1col) {
    memref.global "public" @in2_cons : memref<8xi32>
    memref.global "public" @in2 : memref<8xi32>
    memref.global "public" @in1_cons : memref<8xi32>
    memref.global "public" @in1 : memref<8xi32>
    memref.global "public" @in0_cons : memref<8xi32>
    memref.global "public" @in0 : memref<8xi32>
    memref.global "public" @in_cons : memref<24xi32>
    memref.global "public" @in : memref<24xi32>
    %tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %in2_cons_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_0"} : memref<8xi32> 
    %in2_cons_buff_1 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in2_cons_buff_1"} : memref<8xi32> 
    %in2_cons_prod_lock = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "in1_cons_buff_0"} : memref<8xi32> 
    %in1_cons_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in1_cons_buff_1"} : memref<8xi32> 
    %in1_cons_prod_lock = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_0"} : memref<8xi32> 
    %in0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in0_cons_buff_1"} : memref<8xi32> 
    %in0_cons_prod_lock = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "in0_cons_prod_lock"}
    %in0_cons_cons_lock = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "in0_cons_cons_lock"}
    %in_cons_buff_0 = aie.buffer(%tile_0_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in_cons_buff_0"} : memref<24xi32> 
    %in_cons_buff_1 = aie.buffer(%tile_0_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in_cons_buff_1"} : memref<24xi32> 
    %in_cons_prod_lock = aie.lock(%tile_0_1, 0) {init = 6 : i32, sym_name = "in_cons_prod_lock"}
    %in_cons_cons_lock = aie.lock(%tile_0_1, 1) {init = 0 : i32, sym_name = "in_cons_cons_lock"}
    aie.flow(%tile_0_0, DMA : 0, %tile_0_1, DMA : 0)
    aie.flow(%tile_0_1, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%tile_0_1, DMA : 1, %tile_0_3, DMA : 0)
    aie.flow(%tile_0_1, DMA : 2, %tile_0_4, DMA : 0)
    %core_0_2 = aie.core(%tile_0_2) {
      %c1_i32 = arith.constant 1 : i32
      %c0 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c8 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      %4 = memref.load %in0_cons_buff_0[%2] : memref<8xi32>
      %5 = arith.addi %4, %c1_i32 : i32
      memref.store %5, %in0_cons_buff_0[%2] : memref<8xi32>
      %6 = arith.addi %2, %c1 : index
      cf.br ^bb3(%6 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      aie.use_lock(%in0_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c8 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      %9 = memref.load %in0_cons_buff_1[%7] : memref<8xi32>
      %10 = arith.addi %9, %c1_i32 : i32
      memref.store %10, %in0_cons_buff_1[%7] : memref<8xi32>
      %11 = arith.addi %7, %c1 : index
      cf.br ^bb6(%11 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%in0_cons_prod_lock, Release, 1)
      %12 = arith.addi %0, %c2 : index
      cf.br ^bb1(%12 : index)
    ^bb9:  // pred: ^bb1
      aie.end
    }
    %core_0_3 = aie.core(%tile_0_3) {
      %c1_i32 = arith.constant 1 : i32
      %c0 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c8 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      %4 = memref.load %in1_cons_buff_0[%2] : memref<8xi32>
      %5 = arith.addi %4, %c1_i32 : i32
      memref.store %5, %in1_cons_buff_0[%2] : memref<8xi32>
      %6 = arith.addi %2, %c1 : index
      cf.br ^bb3(%6 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      aie.use_lock(%in1_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c8 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      %9 = memref.load %in1_cons_buff_1[%7] : memref<8xi32>
      %10 = arith.addi %9, %c1_i32 : i32
      memref.store %10, %in1_cons_buff_1[%7] : memref<8xi32>
      %11 = arith.addi %7, %c1 : index
      cf.br ^bb6(%11 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%in1_cons_prod_lock, Release, 1)
      %12 = arith.addi %0, %c2 : index
      cf.br ^bb1(%12 : index)
    ^bb9:  // pred: ^bb1
      aie.end
    }
    %core_0_4 = aie.core(%tile_0_4) {
      %c1_i32 = arith.constant 1 : i32
      %c0 = arith.constant 0 : index
      %c8 = arith.constant 8 : index
      %c1 = arith.constant 1 : index
      %c2 = arith.constant 2 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb8
      %1 = arith.cmpi slt, %0, %c8 : index
      cf.cond_br %1, ^bb2, ^bb9
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c8 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      %4 = memref.load %in2_cons_buff_0[%2] : memref<8xi32>
      %5 = arith.addi %4, %c1_i32 : i32
      memref.store %5, %in2_cons_buff_0[%2] : memref<8xi32>
      %6 = arith.addi %2, %c1 : index
      cf.br ^bb3(%6 : index)
    ^bb5:  // pred: ^bb3
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      cf.br ^bb6(%c0 : index)
    ^bb6(%7: index):  // 2 preds: ^bb5, ^bb7
      %8 = arith.cmpi slt, %7, %c8 : index
      cf.cond_br %8, ^bb7, ^bb8
    ^bb7:  // pred: ^bb6
      %9 = memref.load %in2_cons_buff_1[%7] : memref<8xi32>
      %10 = arith.addi %9, %c1_i32 : i32
      memref.store %10, %in2_cons_buff_1[%7] : memref<8xi32>
      %11 = arith.addi %7, %c1 : index
      cf.br ^bb6(%11 : index)
    ^bb8:  // pred: ^bb6
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      %12 = arith.addi %0, %c2 : index
      cf.br ^bb1(%12 : index)
    ^bb9:  // pred: ^bb1
      aie.end
    }
    aie.shim_dma_allocation @in(MM2S, 0, 0)
    %memtile_dma_0_1 = aie.memtile_dma(%tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in_cons_prod_lock, AcquireGreaterEqual, 3)
      aie.dma_bd(%in_cons_buff_0 : memref<24xi32>, 0, 24) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in_cons_cons_lock, Release, 3)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in_cons_prod_lock, AcquireGreaterEqual, 3)
      aie.dma_bd(%in_cons_buff_1 : memref<24xi32>, 0, 24) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in_cons_cons_lock, Release, 3)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%in_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in_cons_buff_0 : memref<24xi32>, 0, 8) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in_cons_buff_1 : memref<24xi32>, 0, 8) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%in_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in_cons_buff_0 : memref<24xi32>, 8, 8) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%in_cons_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%in_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in_cons_buff_1 : memref<24xi32>, 8, 8) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%in_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%in_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in_cons_buff_0 : memref<24xi32>, 16, 8) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%in_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%in_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in_cons_buff_1 : memref<24xi32>, 16, 8) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%in_cons_prod_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_0 : memref<8xi32>, 0, 8) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<8xi32>, 0, 8) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<8xi32>, 0, 8) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<8xi32>, 0, 8) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<8xi32>, 0, 8) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<8xi32>, 0, 8) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    aie.packet_flow(15) {
      aie.packet_source<%tile_0_0, Ctrl : 0>
      aie.packet_dest<%tile_0_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
  }
}

