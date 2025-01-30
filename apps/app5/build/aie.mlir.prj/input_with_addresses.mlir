module {
  aie.device(npu1_4col) {
    memref.global "public" @out_cons : memref<1024xf32>
    memref.global "public" @out : memref<1024xf32>
    memref.global "public" @in3_cons : memref<1xf32>
    memref.global "public" @in3 : memref<1xf32>
    memref.global "public" @in2_cons : memref<1024xf32>
    memref.global "public" @in2 : memref<1024xf32>
    memref.global "public" @in1_cons : memref<1024xf32>
    memref.global "public" @in1 : memref<1024xf32>
    memref.global "public" @in0_cons : memref<1xf32>
    memref.global "public" @in0 : memref<1xf32>
    func.func private @vector_scalar_mul_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1xf32>, i32)
    func.func private @passthrough(memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @vector_add_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @vector_mult_aie_scalar(memref<1024xf32>, memref<1024xf32>, memref<1024xf32>, i32)
    func.func private @mean(memref<1024xf32>, memref<1xf32>, i32)
    %tile_0_0 = aie.tile(0, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_0_1 = aie.tile(0, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_0_2 = aie.tile(0, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_0_3 = aie.tile(0, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_0_4 = aie.tile(0, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_0_5 = aie.tile(0, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_1_0 = aie.tile(1, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_1_1 = aie.tile(1, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_1_2 = aie.tile(1, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_1_3 = aie.tile(1, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_1_4 = aie.tile(1, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_1_5 = aie.tile(1, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_2_0 = aie.tile(2, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_2_1 = aie.tile(2, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_2_2 = aie.tile(2, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_2_3 = aie.tile(2, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_2_4 = aie.tile(2, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_2_5 = aie.tile(2, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %tile_3_0 = aie.tile(3, 0) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 15>}
    %tile_3_1 = aie.tile(3, 1) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 26>}
    %tile_3_2 = aie.tile(3, 2) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 27>}
    %tile_3_3 = aie.tile(3, 3) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 29>}
    %tile_3_4 = aie.tile(3, 4) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 30>}
    %tile_3_5 = aie.tile(3, 5) {controller_id = #aie.packet_info<pkt_type = 0, pkt_id = 31>}
    %out_cons_prod_lock = aie.lock(%tile_1_0, 4) {init = 1 : i32, sym_name = "out_cons_prod_lock"}
    %out_cons_cons_lock = aie.lock(%tile_1_0, 5) {init = 0 : i32, sym_name = "out_cons_cons_lock"}
    %in3_cons_buff_0 = aie.buffer(%tile_1_2) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in3_cons_buff_0"} : memref<1xf32> 
    %in3_cons_buff_1 = aie.buffer(%tile_1_2) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in3_cons_buff_1"} : memref<1xf32> 
    %in3_cons_prod_lock = aie.lock(%tile_1_2, 0) {init = 2 : i32, sym_name = "in3_cons_prod_lock"}
    %in3_cons_cons_lock = aie.lock(%tile_1_2, 1) {init = 0 : i32, sym_name = "in3_cons_cons_lock"}
    %in3_prod_lock = aie.lock(%tile_1_0, 2) {init = 1 : i32, sym_name = "in3_prod_lock"}
    %in3_cons_lock = aie.lock(%tile_1_0, 3) {init = 0 : i32, sym_name = "in3_cons_lock"}
    %in2_cons_buff_0 = aie.buffer(%tile_1_1) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in2_cons_buff_0"} : memref<1024xf32> 
    %in2_cons_buff_1 = aie.buffer(%tile_1_1) {address = 65536 : i32, mem_bank = 1 : i32, sym_name = "in2_cons_buff_1"} : memref<1024xf32> 
    %in2_cons_prod_lock = aie.lock(%tile_1_1, 0) {init = 2 : i32, sym_name = "in2_cons_prod_lock"}
    %in2_cons_cons_lock = aie.lock(%tile_1_1, 1) {init = 0 : i32, sym_name = "in2_cons_cons_lock"}
    %in2_prod_lock = aie.lock(%tile_1_0, 0) {init = 1 : i32, sym_name = "in2_prod_lock"}
    %in2_cons_lock = aie.lock(%tile_1_0, 1) {init = 0 : i32, sym_name = "in2_cons_lock"}
    %in1_cons_buff_0 = aie.buffer(%tile_1_3) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in1_cons_buff_0"} : memref<1024xf32> 
    %in1_cons_buff_1 = aie.buffer(%tile_1_3) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in1_cons_buff_1"} : memref<1024xf32> 
    %in1_cons_prod_lock = aie.lock(%tile_1_3, 0) {init = 2 : i32, sym_name = "in1_cons_prod_lock"}
    %in1_cons_cons_lock = aie.lock(%tile_1_3, 1) {init = 0 : i32, sym_name = "in1_cons_cons_lock"}
    %in1_prod_lock = aie.lock(%tile_0_0, 2) {init = 1 : i32, sym_name = "in1_prod_lock"}
    %in1_cons_lock = aie.lock(%tile_0_0, 3) {init = 0 : i32, sym_name = "in1_cons_lock"}
    %in0_cons_buff_0 = aie.buffer(%tile_2_4) {address = 0 : i32, mem_bank = 0 : i32, sym_name = "in0_cons_buff_0"} : memref<1xf32> 
    %in0_cons_buff_1 = aie.buffer(%tile_2_4) {address = 16384 : i32, mem_bank = 1 : i32, sym_name = "in0_cons_buff_1"} : memref<1xf32> 
    %in0_cons_prod_lock = aie.lock(%tile_2_4, 0) {init = 2 : i32, sym_name = "in0_cons_prod_lock"}
    %in0_cons_cons_lock = aie.lock(%tile_2_4, 1) {init = 0 : i32, sym_name = "in0_cons_cons_lock"}
    %in0_prod_lock = aie.lock(%tile_0_0, 0) {init = 1 : i32, sym_name = "in0_prod_lock"}
    %in0_cons_lock = aie.lock(%tile_0_0, 1) {init = 0 : i32, sym_name = "in0_cons_lock"}
    aie.flow(%tile_0_0, DMA : 0, %tile_2_4, DMA : 0)
    aie.flow(%tile_0_0, DMA : 1, %tile_1_3, DMA : 0)
    aie.flow(%tile_1_0, DMA : 0, %tile_1_1, DMA : 0)
    aie.flow(%tile_1_0, DMA : 1, %tile_1_2, DMA : 0)
    aie.flow(%tile_1_1, DMA : 0, %tile_1_0, DMA : 0)
    aiex.runtime_sequence(%arg0: memref<1xf32>, %arg1: memref<9216xf32>, %arg2: memref<27648xf32>, %arg3: memref<1xf32>, %arg4: memref<9216xf32>) {
      aiex.npu.dma_memcpy_nd(0, 0, %arg0[0, 0, 0, 0][1, 1, 1, 1][0, 0, 0, 1]) {id = 1 : i64, metadata = @in0} : memref<1xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg1[0, 0, 0, 0][1, 1, 1, 9216][0, 0, 0, 1]) {id = 2 : i64, metadata = @in1} : memref<9216xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg2[0, 0, 0, 0][1, 1, 1, 27648][0, 0, 0, 1]) {id = 3 : i64, metadata = @in2} : memref<27648xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg3[0, 0, 0, 0][1, 1, 1, 2][0, 0, 0, 1]) {id = 4 : i64, metadata = @in3} : memref<1xf32>
      aiex.npu.dma_memcpy_nd(0, 0, %arg4[0, 0, 0, 0][1, 1, 1, 27648][0, 0, 0, 1]) {id = 0 : i64, metadata = @out} : memref<9216xf32>
      aiex.npu.dma_wait {symbol = @out}
    }
    aie.shim_dma_allocation @in0(MM2S, 0, 0)
    %mem_2_4 = aie.mem(%tile_2_4) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_0 : memref<1xf32>, 0, 1) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in0_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in0_cons_buff_1 : memref<1xf32>, 0, 1) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in0_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    aie.shim_dma_allocation @in1(MM2S, 1, 0)
    %mem_1_3 = aie.mem(%tile_1_3) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in1_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in1_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in1_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    aie.shim_dma_allocation @in2(MM2S, 0, 1)
    %memtile_dma_1_1 = aie.memtile_dma(%tile_1_1) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in2_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in2_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      %1 = aie.dma_start(MM2S, 0, ^bb4, ^bb6)
    ^bb4:  // 2 preds: ^bb3, ^bb5
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_0 : memref<1024xf32>, 0, 1024) {bd_id = 2 : i32, next_bd_id = 3 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb5
    ^bb5:  // pred: ^bb4
      aie.use_lock(%in2_cons_cons_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in2_cons_buff_1 : memref<1024xf32>, 0, 1024) {bd_id = 3 : i32, next_bd_id = 2 : i32}
      aie.use_lock(%in2_cons_prod_lock, Release, 1)
      aie.next_bd ^bb4
    ^bb6:  // pred: ^bb3
      aie.end
    }
    aie.shim_dma_allocation @in3(MM2S, 1, 1)
    %mem_1_2 = aie.mem(%tile_1_2) {
      %0 = aie.dma_start(S2MM, 0, ^bb1, ^bb3)
    ^bb1:  // 2 preds: ^bb0, ^bb2
      aie.use_lock(%in3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_0 : memref<1xf32>, 0, 1) {bd_id = 0 : i32, next_bd_id = 1 : i32}
      aie.use_lock(%in3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb2
    ^bb2:  // pred: ^bb1
      aie.use_lock(%in3_cons_prod_lock, AcquireGreaterEqual, 1)
      aie.dma_bd(%in3_cons_buff_1 : memref<1xf32>, 0, 1) {bd_id = 1 : i32, next_bd_id = 0 : i32}
      aie.use_lock(%in3_cons_cons_lock, Release, 1)
      aie.next_bd ^bb1
    ^bb3:  // pred: ^bb0
      aie.end
    }
    aie.shim_dma_allocation @out(S2MM, 0, 1)
    aie.packet_flow(15) {
      aie.packet_source<%tile_0_0, Ctrl : 0>
      aie.packet_dest<%tile_0_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%tile_1_0, Ctrl : 0>
      aie.packet_dest<%tile_1_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%tile_2_0, Ctrl : 0>
      aie.packet_dest<%tile_2_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
    aie.packet_flow(15) {
      aie.packet_source<%tile_3_0, Ctrl : 0>
      aie.packet_dest<%tile_3_0, South : 0>
    } {keep_pkt_header = true, priority_route = true}
  }
}
