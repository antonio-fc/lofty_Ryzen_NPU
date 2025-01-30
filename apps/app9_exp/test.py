import numpy as np
import pyxrt as xrt
import sys
import time

import aie.utils.test as test_utils
import aie.utils.trace as trace_utils
from aie.utils.xrt import setup_aie, write_out_trace, execute
from ml_dtypes import bfloat16


def main(opts):

    # Load instruction sequence
    with open(opts.instr, "r") as f:
        instr_text = f.read().split("\n")
        instr_text = [l for l in instr_text if l != ""]
        instr_v = np.array([int(i, 16) for i in instr_text], dtype=np.uint32)

    # ------------------------------------------------------------
    # Configure this to match your design's buffer size and type
    # ------------------------------------------------------------
    INOUT0_VOLUME = 65536
    INOUT1_VOLUME = 65536

    INOUT0_DATATYPE = bfloat16
    INOUT1_DATATYPE = bfloat16
    
    INOUT0_SIZE = INOUT0_VOLUME * 2 # INOUT0_DATATYPE().itemsize, bfloat16.itemsize = 2 bytes
    INOUT1_SIZE = INOUT1_VOLUME * 2 # INOUT1_DATATYPE().itemsize, bfloat16.itemsize = 2 bytes

    OUT_SIZE = INOUT1_SIZE + 4096
    OUT_DATATYPE = INOUT1_DATATYPE

    # ------------------------------------------------------
    # Get device, load the xclbin & kernel and register them
    # ------------------------------------------------------
    (device, kernel) = test_utils.init_xrt_load_kernel(opts)

    # ------------------------------------------------------
    # Initialize input/ output buffer sizes and sync them
    # ------------------------------------------------------
    bo_instr = xrt.bo(device, len(instr_v) * 4, xrt.bo.cacheable, kernel.group_id(1))
    bo_inout0 = xrt.bo(device, INOUT0_SIZE, xrt.bo.host_only, kernel.group_id(3))
    bo_inout1 = xrt.bo(device, OUT_SIZE, xrt.bo.host_only, kernel.group_id(4))

    # Initialize instruction buffer
    bo_instr.write(instr_v, 0)

    # Getting/generating input data
    # inout0 = np.arange(0, INOUT0_VOLUME, dtype=bfloat16)
    inout0 = np.repeat(np.array([600], dtype=INOUT0_DATATYPE), INOUT0_VOLUME)
    inout1 = np.zeros(OUT_SIZE, dtype=np.uint8)

    # Initialize data buffers
    if INOUT0_DATATYPE == bfloat16:
        bo_inout0.write(inout0.view(np.uint16), 0) # view is necessary because there is an error otherwise (doesnt recognize the type for some reason)
    else:
        bo_inout0.write(inout0, 0)
    bo_inout1.write(inout1, 0)

    # Sync buffers to update input buffer values
    bo_instr.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    bo_inout0.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_TO_DEVICE)
    
    # ------------------------------------------------------
    # Initialize run configs
    # ------------------------------------------------------


    # ------------------------------------------------------
    # Main run loop
    # ------------------------------------------------------
    # Run kernel
    if opts.verbosity >= 1:
        print("Running Kernel.")
    start = time.time_ns()
    opcode = 3
    h = kernel(opcode, bo_instr, len(instr_v), bo_inout0, bo_inout1) # only 1 input and 1 output
    h.wait()
    stop = time.time_ns()
    bo_inout1.sync(xrt.xclBOSyncDirection.XCL_BO_SYNC_BO_FROM_DEVICE)

    entire_buffer = bo_inout1.read(OUT_SIZE, 0).view(bfloat16)
    output_buffer = entire_buffer[:INOUT1_VOLUME]
    trace_buffer = entire_buffer[INOUT1_VOLUME:]
    write_out_trace(trace_buffer, "trace.txt")

    refs = np.exp(inout0)
    for i in range(10):
        val = inout0[i]
        exp = refs[i]
        print(f"e^{val} = {exp} (ref)")

    for i in range(10):
        val = output_buffer[i]
        ref = refs[i]
        if(np.isinf(val) or np.isinf(ref)):
            print(f"Inf (npu: {val}, ref: {ref})")
        elif(np.isnan(val) or np.isnan(val)):
            print("NaN")
        else:
            print(f"Output (npu: {val}, ref: {ref})")
    
    if opts.verify:
        if opts.verbosity >= 1:
            print("Verifying results ...")

    
    # ------------------------------------------------------
    # Print verification and timing results
    # ------------------------------------------------------



if __name__ == "__main__":
    p = test_utils.create_default_argparser()
    opts = p.parse_args(sys.argv[1:])
    main(opts)




    