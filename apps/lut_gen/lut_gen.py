import numpy as np
import sys
from ml_dtypes import bfloat16
import math

def write_lut(file_name, values, stride, op, dtype, size):
    with open(f'luts/{file_name}.txt', 'w') as file:
        lines = []
        lines.append(f"alignas(aie::vector_decl_align) {dtype} {op}_ilut_ab[{size}] = {{ // the values shoud be in chunks of 128b according to the documentation\n")
        n_lines = int(values.size/stride)
        for i in range(n_lines):
            line = "\t"
            for _ in range(2):
                for j in range(stride):
                    value = values[i * stride + j]
                    line = line + f"{value:.6f}, "
            if i == n_lines - 1: # removing the last comma for the last line
                line = line[:-2]
            line = line + "\n"
            lines.append(line)
        lines.append("};")
        file.writelines(lines)
        file.close()

def get_values(op, size, dtype, lut_type):
    # Formating inputs
    size = size/2
    if dtype == "float":
        dtype = np.float32
    elif dtype == "bfloat16":
        dtype = bfloat16
    index_range = np.arange(0, size, 1, dtype=dtype)

    # Max value matching the type of lut
    if lut_type == "full":
        max_val = 2*math.pi
    elif lut_type == "half":
        max_val = math.pi
    elif lut_type == "quarter":
        max_val = math.pi/2

    # Calling matching function to the op
    if op == "sin":
        values = np.sin(index_range * max_val / size)
    elif op == "cos":
        values = np.cos(index_range * max_val / size)
    elif op == "tan":
        values = np.tan(index_range * max_val / size / 2)
    
    return values
    

def main():
    # Getting the arguments for lut generation
    args = sys.argv[1:]
    op = args[0]
    size = int(args[1])
    dtype = args[2]
    lut_type = args[3]

    # Check the arguments are valid
    valid_ops = set(["sin", "cos", "tan"])
    valid_sizes = set([128, 256, 512, 1024])
    valid_types = set(["float", "bfloat16"])
    valid_lut_types = set(["full", "half", "quarter"])
    if op not in valid_ops:
        sys.exit(f"Not valid operation: {op}")
    if size not in valid_sizes:
        sys.exit(f"Not valid size: {size}")
    if dtype not in valid_types:
        sys.exit(f"Not valid data type: {dtype}")
    if lut_type not in valid_lut_types:
        sys.exit(f"Not valid LUT type: {lut_type}")

    # Confirmation message
    print(f"Generating {lut_type} LUT for {op} with size {size} of data type {dtype} ...")

    # Generating according to LUT type
    values = get_values(op, size, dtype, lut_type)
    if dtype == "float":
        stride = 4
    elif dtype == "bfloat16":
        stride = 8
    # Writing LUT according to type
    file_name = f"{lut_type}{size}{dtype}_{op}"
    write_lut(file_name, values, stride, op, dtype, size)
    print("DONE!")
    print(f"LUT can be found in file '{file_name}.txt'")
    


if __name__ == "__main__":
    # run with: python3 lut_gen.py 'op' 'real size' 'data type' 'lut type'
    main()