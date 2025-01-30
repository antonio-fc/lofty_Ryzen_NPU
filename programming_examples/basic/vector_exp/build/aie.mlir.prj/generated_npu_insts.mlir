module {
  aie.device(npu1_1col) {
    memref.global "public" @outC_cons : memref<4096xbf16>
    memref.global "public" @outC : memref<4096xbf16>
    memref.global "public" @memC3_cons : memref<1024xbf16>
    memref.global "public" @memC3 : memref<1024xbf16>
    memref.global "public" @memC2_cons : memref<1024xbf16>
    memref.global "public" @memC2 : memref<1024xbf16>
    memref.global "public" @memC1_cons : memref<1024xbf16>
    memref.global "public" @memC1 : memref<1024xbf16>
    memref.global "public" @memC0_cons : memref<1024xbf16>
    memref.global "public" @memC0 : memref<1024xbf16>
    memref.global "public" @memA3_cons : memref<1024xbf16>
    memref.global "public" @memA3 : memref<1024xbf16>
    memref.global "public" @memA2_cons : memref<1024xbf16>
    memref.global "public" @memA2 : memref<1024xbf16>
    memref.global "public" @memA1_cons : memref<1024xbf16>
    memref.global "public" @memA1 : memref<1024xbf16>
    memref.global "public" @memA0_cons : memref<1024xbf16>
    memref.global "public" @memA0 : memref<1024xbf16>
    memref.global "public" @inA_cons : memref<4096xbf16>
    memref.global "public" @inA : memref<4096xbf16>
    func.func private @exp_bf16_1024(memref<1024xbf16>, memref<1024xbf16>)
    %tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_0_5 = aie.tile(0, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %outC_buff_0 = aie.buffer(%tile_0_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "outC_buff_0"} : memref<4096xbf16> 
    %outC_buff_1 = aie.buffer(%tile_0_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "outC_buff_1"} : memref<4096xbf16> 
    %outC_prod_lock = aie.lock(%tile_0_1, 2) {init = 8 : i32, sym_name = "outC_prod_lock"}
    %outC_cons_lock = aie.lock(%tile_0_1, 3) {init = 0 : i32, sym_name = "outC_cons_lock"}
    %memC3_buff_0 = aie.buffer(%tile_0_5) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "memC3_buff_0"} : memref<1024xbf16> 
    %memC3_buff_1 = aie.buffer(%tile_0_5) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memC3_buff_1"} : memref<1024xbf16> 
    %memC3_prod_lock = aie.lock(%tile_0_5, 2) {init = 2 : i32, sym_name = "memC3_prod_lock"}
    %memC3_cons_lock = aie.lock(%tile_0_5, 3) {init = 0 : i32, sym_name = "memC3_cons_lock"}
    %memC2_buff_0 = aie.buffer(%tile_0_4) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "memC2_buff_0"} : memref<1024xbf16> 
    %memC2_buff_1 = aie.buffer(%tile_0_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memC2_buff_1"} : memref<1024xbf16> 
    %memC2_prod_lock = aie.lock(%tile_0_4, 2) {init = 2 : i32, sym_name = "memC2_prod_lock"}
    %memC2_cons_lock = aie.lock(%tile_0_4, 3) {init = 0 : i32, sym_name = "memC2_cons_lock"}
    %memC1_buff_0 = aie.buffer(%tile_0_3) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "memC1_buff_0"} : memref<1024xbf16> 
    %memC1_buff_1 = aie.buffer(%tile_0_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memC1_buff_1"} : memref<1024xbf16> 
    %memC1_prod_lock = aie.lock(%tile_0_3, 2) {init = 2 : i32, sym_name = "memC1_prod_lock"}
    %memC1_cons_lock = aie.lock(%tile_0_3, 3) {init = 0 : i32, sym_name = "memC1_cons_lock"}
    %memC0_buff_0 = aie.buffer(%tile_0_2) {address = 1024 : i32, mem_bank = 0 : i32, sym_name = "memC0_buff_0"} : memref<1024xbf16> 
    %memC0_buff_1 = aie.buffer(%tile_0_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "memC0_buff_1"} : memref<1024xbf16> 
    %memC0_prod_lock = aie.lock(%tile_0_2, 2) {init = 2 : i32, sym_name = "memC0_prod_lock"}
    %memC0_cons_lock = aie.lock(%tile_0_2, 3) {init = 0 : i32, sym_name = "memC0_cons_lock"}
    %memA3_cons_buff_0 = aie.buffer(%tile_0_5) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memA3_cons_buff_0"} : memref<1024xbf16> 
    %memA3_cons_buff_1 = aie.buffer(%tile_0_5) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memA3_cons_buff_1"} : memref<1024xbf16> 
    %memA3_cons_prod_lock = aie.lock(%tile_0_5, 0) {init = 2 : i32, sym_name = "memA3_cons_prod_lock"}
    %memA3_cons_cons_lock = aie.lock(%tile_0_5, 1) {init = 0 : i32, sym_name = "memA3_cons_cons_lock"}
    %memA2_cons_buff_0 = aie.buffer(%tile_0_4) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memA2_cons_buff_0"} : memref<1024xbf16> 
    %memA2_cons_buff_1 = aie.buffer(%tile_0_4) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memA2_cons_buff_1"} : memref<1024xbf16> 
    %memA2_cons_prod_lock = aie.lock(%tile_0_4, 0) {init = 2 : i32, sym_name = "memA2_cons_prod_lock"}
    %memA2_cons_cons_lock = aie.lock(%tile_0_4, 1) {init = 0 : i32, sym_name = "memA2_cons_cons_lock"}
    %memA1_cons_buff_0 = aie.buffer(%tile_0_3) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memA1_cons_buff_0"} : memref<1024xbf16> 
    %memA1_cons_buff_1 = aie.buffer(%tile_0_3) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memA1_cons_buff_1"} : memref<1024xbf16> 
    %memA1_cons_prod_lock = aie.lock(%tile_0_3, 0) {init = 2 : i32, sym_name = "memA1_cons_prod_lock"}
    %memA1_cons_cons_lock = aie.lock(%tile_0_3, 1) {init = 0 : i32, sym_name = "memA1_cons_cons_lock"}
    %memA0_cons_buff_0 = aie.buffer(%tile_0_2) {address = 32768 : i32, mem_bank = 2 : i32, sym_name = "memA0_cons_buff_0"} : memref<1024xbf16> 
    %memA0_cons_buff_1 = aie.buffer(%tile_0_2) {address = 49152 : i32, mem_bank = 3 : i32, sym_name = "memA0_cons_buff_1"} : memref<1024xbf16> 
    %memA0_cons_prod_lock = aie.lock(%tile_0_2, 0) {init = 2 : i32, sym_name = "memA0_cons_prod_lock"}
    %memA0_cons_cons_lock = aie.lock(%tile_0_2, 1) {init = 0 : i32, sym_name = "memA0_cons_cons_lock"}
    %inA_cons_buff_0 = aie.buffer(%tile_0_1) {address = 131072 : i32, mem_bank = 2 : i32, sym_name = "inA_cons_buff_0"} : memref<4096xbf16> 
    %inA_cons_buff_1 = aie.buffer(%tile_0_1) {address = 196608 : i32, mem_bank = 3 : i32, sym_name = "inA_cons_buff_1"} : memref<4096xbf16> 
    %inA_cons_prod_lock = aie.lock(%tile_0_1, 0) {init = 8 : i32, sym_name = "inA_cons_prod_lock"}
    %inA_cons_cons_lock = aie.lock(%tile_0_1, 1) {init = 0 : i32, sym_name = "inA_cons_cons_lock"}
    aie.flow(%tile_0_0, DMA : 0, %tile_0_1, DMA : 0)
    aie.flow(%tile_0_1, DMA : 0, %tile_0_2, DMA : 0)
    aie.flow(%tile_0_1, DMA : 1, %tile_0_3, DMA : 0)
    aie.flow(%tile_0_1, DMA : 2, %tile_0_4, DMA : 0)
    aie.flow(%tile_0_1, DMA : 3, %tile_0_5, DMA : 0)
    aie.flow(%tile_0_2, DMA : 0, %tile_0_1, DMA : 1)
    aie.flow(%tile_0_3, DMA : 0, %tile_0_1, DMA : 2)
    aie.flow(%tile_0_4, DMA : 0, %tile_0_1, DMA : 3)
    aie.flow(%tile_0_5, DMA : 0, %tile_0_1, DMA : 4)
    aie.flow(%tile_0_1, DMA : 4, %tile_0_0, DMA : 0)
    %core_0_2 = aie.core(%tile_0_2) {
      %c2 = arith.constant 2 : index
      %c16 = arith.constant 16 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memC0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @exp_bf16_1024(%memA0_cons_buff_0, %memC0_buff_0) : (memref<1024xbf16>, memref<1024xbf16>) -> ()
      aie.use_lock(%memA0_cons_prod_lock, Release, 1)
      aie.use_lock(%memC0_cons_lock, Release, 1)
      aie.use_lock(%memC0_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA0_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @exp_bf16_1024(%memA0_cons_buff_1, %memC0_buff_1) : (memref<1024xbf16>, memref<1024xbf16>) -> ()
      aie.use_lock(%memA0_cons_prod_lock, Release, 1)
      aie.use_lock(%memC0_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "kernels.a"}
    %core_0_3 = aie.core(%tile_0_3) {
      %c2 = arith.constant 2 : index
      %c16 = arith.constant 16 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memC1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @exp_bf16_1024(%memA1_cons_buff_0, %memC1_buff_0) : (memref<1024xbf16>, memref<1024xbf16>) -> ()
      aie.use_lock(%memA1_cons_prod_lock, Release, 1)
      aie.use_lock(%memC1_cons_lock, Release, 1)
      aie.use_lock(%memC1_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA1_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @exp_bf16_1024(%memA1_cons_buff_1, %memC1_buff_1) : (memref<1024xbf16>, memref<1024xbf16>) -> ()
      aie.use_lock(%memA1_cons_prod_lock, Release, 1)
      aie.use_lock(%memC1_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "kernels.a"}
    %core_0_4 = aie.core(%tile_0_4) {
      %c2 = arith.constant 2 : index
      %c16 = arith.constant 16 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memC2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @exp_bf16_1024(%memA2_cons_buff_0, %memC2_buff_0) : (memref<1024xbf16>, memref<1024xbf16>) -> ()
      aie.use_lock(%memA2_cons_prod_lock, Release, 1)
      aie.use_lock(%memC2_cons_lock, Release, 1)
      aie.use_lock(%memC2_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA2_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @exp_bf16_1024(%memA2_cons_buff_1, %memC2_buff_1) : (memref<1024xbf16>, memref<1024xbf16>) -> ()
      aie.use_lock(%memA2_cons_prod_lock, Release, 1)
      aie.use_lock(%memC2_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "kernels.a"}
    %core_0_5 = aie.core(%tile_0_5) {
      %c2 = arith.constant 2 : index
      %c16 = arith.constant 16 : index
      %c0 = arith.constant 0 : index
      %c4294967295 = arith.constant 4294967295 : index
      %c1 = arith.constant 1 : index
      cf.br ^bb1(%c0 : index)
    ^bb1(%0: index):  // 2 preds: ^bb0, ^bb5
      %1 = arith.cmpi slt, %0, %c4294967295 : index
      cf.cond_br %1, ^bb2, ^bb6
    ^bb2:  // pred: ^bb1
      cf.br ^bb3(%c0 : index)
    ^bb3(%2: index):  // 2 preds: ^bb2, ^bb4
      %3 = arith.cmpi slt, %2, %c16 : index
      cf.cond_br %3, ^bb4, ^bb5
    ^bb4:  // pred: ^bb3
      aie.use_lock(%memC3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @exp_bf16_1024(%memA3_cons_buff_0, %memC3_buff_0) : (memref<1024xbf16>, memref<1024xbf16>) -> ()
      aie.use_lock(%memA3_cons_prod_lock, Release, 1)
      aie.use_lock(%memC3_cons_lock, Release, 1)
      aie.use_lock(%memC3_prod_lock, AcquireGreaterEqual, 1)
      aie.use_lock(%memA3_cons_cons_lock, AcquireGreaterEqual, 1)
      func.call @exp_bf16_1024(%memA3_cons_buff_1, %memC3_buff_1) : (memref<1024xbf16>, memref<1024xbf16>) -> ()
      aie.use_lock(%memA3_cons_prod_lock, Release, 1)
      aie.use_lock(%memC3_cons_lock, Release, 1)
      %4 = arith.addi %2, %c2 : index
      cf.br ^bb3(%4 : index)
    ^bb5:  // pred: ^bb3
      %5 = arith.addi %0, %c1 : index
      cf.br ^bb1(%5 : index)
    ^bb6:  // pred: ^bb1
      aie.end
    } {link_with = "kernels.a"}
    memref.global "private" constant @blockwrite_data_0 : memref<8xi32> = dense<[32768, 0, 0, 0, -2147483648, 0, 0, 33554432]>
    aiex.runtime_sequence(%arg0: memref<65536xbf16>, %arg1: memref<65536xbf16>) {
      %0 = memref.get_global @blockwrite_data_0 : memref<8xi32>
      aiex.npu.blockwrite(%0) {address = 118816 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118820 : ui32, arg_idx = 0 : i32, arg_plus = 0 : i32}
      aiex.npu.maskwrite32 {address = 119312 : ui32, column = 0 : i32, mask = 3840 : ui32, row = 0 : i32, value = 3840 : ui32}
      aiex.npu.write32 {address = 119316 : ui32, column = 0 : i32, row = 0 : i32, value = 2147483649 : ui32}
      %1 = memref.get_global @blockwrite_data_0 : memref<8xi32>
      aiex.npu.blockwrite(%1) {address = 118784 : ui32} : memref<8xi32>
      aiex.npu.address_patch {addr = 118788 : ui32, arg_idx = 1 : i32, arg_plus = 0 : i32}
      aiex.npu.maskwrite32 {address = 119296 : ui32, column = 0 : i32, mask = 3840 : ui32, row = 0 : i32, value = 3840 : ui32}
      aiex.npu.write32 {address = 119300 : ui32, column = 0 : i32, row = 0 : i32, value = 2147483648 : ui32}
      aiex.npu.sync {channel = 0 : i32, column = 0 : i32, column_num = 1 : i32, direction = 1 : i32, row = 0 : i32, row_num = 1 : i32}
      aiex.npu.sync {channel = 0 : i32, column = 0 : i32, column_num = 1 : i32, direction = 0 : i32, row = 0 : i32, row_num = 1 : i32}
    }
    aie.shim_dma_allocation @inA(MM2S, 0, 0)
    %memtile_dma_0_1 = aie.memtile_dma(%tile_0_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%inA_cons_prod_lock, AcquireGreaterEqual, 4)
      aie.dma_bd(%inA_cons_buff_0 : memref<4096xbf16>, 0, 4096) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%inA_cons_cons_lock, Release, 4)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%inA_cons_prod_lock, AcquireGreaterEqual, 4)
      aie.dma_bd(%inA_cons_buff_1 : memref<4096xbf16>, 0, 4096) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%inA_cons_cons_lock, Release, 4)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_0 : memref<4096xbf16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_1 : memref<4096xbf16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      %2 = aie.dma_start(MM2S, 1, ^bb7, ^bb9)
    ^bb7:  // 2 preds: ^bb6, ^bb8
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_0 : memref<4096xbf16>, 1024, 1024) {bd_id = 24 : i32, next_bd_id = 25 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb8
    ^bb8:  // pred: ^bb7
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_1 : memref<4096xbf16>, 1024, 1024) {bd_id = 25 : i32, next_bd_id = 24 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb7
    ^bb9:  // pred: ^bb6
      %3 = aie.dma_start(MM2S, 2, ^bb10, ^bb12)
    ^bb10:  // 2 preds: ^bb9, ^bb11
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_0 : memref<4096xbf16>, 2048, 1024) {bd_id = 4 : i32, next_bd_id = 5 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb11
    ^bb11:  // pred: ^bb10
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_1 : memref<4096xbf16>, 2048, 1024) {bd_id = 5 : i32, next_bd_id = 4 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb10
    ^bb12:  // pred: ^bb9
      %4 = aie.dma_start(MM2S, 3, ^bb13, ^bb15)
    ^bb13:  // 2 preds: ^bb12, ^bb14
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_0 : memref<4096xbf16>, 3072, 1024) {bd_id = 26 : i32, next_bd_id = 27 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb14
    ^bb14:  // pred: ^bb13
      aie.use_lock(%inA_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%inA_cons_buff_1 : memref<4096xbf16>, 3072, 1024) {bd_id = 27 : i32, next_bd_id = 26 : i32}
      aie.use_lock(%inA_cons_prod_lock, Release, 1)
      aie.next_bd ^bb13
    ^bb15:  // pred: ^bb12
      %5 = aie.dma_start(S2MM, 1, ^bb16, ^bb18)
    ^bb16:  // 2 preds: ^bb15, ^bb17
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_0 : memref<4096xbf16>, 0, 1024) {bd_id = 28 : i32, next_bd_id = 29 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb17
    ^bb17:  // pred: ^bb16
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_1 : memref<4096xbf16>, 0, 1024) {bd_id = 29 : i32, next_bd_id = 28 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb16
    ^bb18:  // pred: ^bb15
      %6 = aie.dma_start(S2MM, 2, ^bb19, ^bb21)
    ^bb19:  // 2 preds: ^bb18, ^bb20
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_0 : memref<4096xbf16>, 1024, 1024) {bd_id = 6 : i32, next_bd_id = 7 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb20
    ^bb20:  // pred: ^bb19
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_1 : memref<4096xbf16>, 1024, 1024) {bd_id = 7 : i32, next_bd_id = 6 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb19
    ^bb21:  // pred: ^bb18
      %7 = aie.dma_start(S2MM, 3, ^bb22, ^bb24)
    ^bb22:  // 2 preds: ^bb21, ^bb23
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_0 : memref<4096xbf16>, 2048, 1024) {bd_id = 30 : i32, next_bd_id = 31 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb23
    ^bb23:  // pred: ^bb22
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_1 : memref<4096xbf16>, 2048, 1024) {bd_id = 31 : i32, next_bd_id = 30 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb22
    ^bb24:  // pred: ^bb21
      %8 = aie.dma_start(S2MM, 4, ^bb25, ^bb27)
    ^bb25:  // 2 preds: ^bb24, ^bb26
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_0 : memref<4096xbf16>, 3072, 1024) {bd_id = 8 : i32, next_bd_id = 9 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb26
    ^bb26:  // pred: ^bb25
      aie.use_lock(%outC_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%outC_buff_1 : memref<4096xbf16>, 3072, 1024) {bd_id = 9 : i32, next_bd_id = 8 : i32}
      aie.use_lock(%outC_cons_lock, Release, 1)
      aie.next_bd ^bb25
    ^bb27:  // pred: ^bb24
      %9 = aie.dma_start(MM2S, 4, ^bb28, ^bb30)
    ^bb28:  // 2 preds: ^bb27, ^bb29
      aie.use_lock(%outC_cons_lock, AcquireGreaterEqual, 4)
      aie.dma_bd(%outC_buff_0 : memref<4096xbf16>, 0, 4096) {bd_id = 10 : i32, next_bd_id = 11 : i32}
      aie.use_lock(%outC_prod_lock, Release, 4)
      aie.next_bd ^bb29
    ^bb29:  // pred: ^bb28
      aie.use_lock(%outC_cons_lock, AcquireGreaterEqual, 4)
      aie.dma_bd(%outC_buff_1 : memref<4096xbf16>, 0, 4096) {bd_id = 11 : i32, next_bd_id = 10 : i32}
      aie.use_lock(%outC_prod_lock, Release, 4)
      aie.next_bd ^bb28
    ^bb30:  // pred: ^bb27
      aie.end
    }
    %mem_0_2 = aie.mem(%tile_0_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA0_cons_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA0_cons_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memC0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC0_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memC0_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memC0_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC0_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memC0_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_0_3 = aie.mem(%tile_0_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA1_cons_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA1_cons_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memC1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC1_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memC1_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memC1_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC1_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memC1_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_0_4 = aie.mem(%tile_0_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA2_cons_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA2_cons_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memC2_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC2_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memC2_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memC2_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC2_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memC2_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    %mem_0_5 = aie.mem(%tile_0_5) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%memA3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA3_cons_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%memA3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%memA3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memA3_cons_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%memA3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%memC3_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC3_buff_0 : memref<1024xbf16>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%memC3_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%memC3_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%memC3_buff_1 : memref<1024xbf16>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%memC3_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @outC(S2MM, 0, 0)
    aie.packet_flow(15) {
      aie.packet_source<%tile_0_0, Ctrl : 0>
      aie.packet_dest<%tile_0_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
  }
}

