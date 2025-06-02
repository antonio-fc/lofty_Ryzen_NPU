##===- Makefile -----------------------------------------------------------===##
# 
# This file licensed under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
# 
##===----------------------------------------------------------------------===##

##==------ IMPORTANT SETUP ------==##

srcdir := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

include ${srcdir}/utils/makefile-common

all: build/final.xclbin

targetname = loafty
app_version = 0
trace_size = 536870912 # 524288
n_antenna = 96 # make sure to run 'make clean' after changing this
image_size = 128 # make sure to run 'make clean' after changing this
trace_file = ${srcdir}/tracing/trace.txt

VALID_VERSIONS := 0 1 2
ifeq ($(filter $(app_version),$(VALID_VERSIONS)),$(app_version))
  $(info Loafty Version selected: $(app_version))
else
  $(error Loafty Version is invalid: $(app_version))
endif

## Relevant paths
src_v := ${srcdir}/src_v$(app_version)
cpp_host := ${src_v}/test.cpp
py_host := ${src_v}/test.py
npu_code := ${src_v}/aie2.py
kernels := ${src_v}/kernels

## Prerequisites for each version
ifeq ($(app_version), 0)
	FINAL_DEPS := build/passthrough.o build/scale.o build/add.o build/kernels.a build/mul.o build/sub.o build/mean.o
	TRACE_DEPS := build/passthrough.o build/scale.o build/add.o build/kernels.a build/mul.o build/sub.o build/mean.o
else ifeq ($(app_version), 1)
	FINAL_DEPS := build/passthrough.o build/mean.o build/kernels.a
	TRACE_DEPS := build/passthrough.o build/mean.o build/kernels.a
else ifeq ($(app_version), 2)
	FINAL_DEPS := build/passthrough.o build/scale.o build/add.o build/kernels.a build/sub.o build/mean.o
	TRACE_DEPS := build/passthrough.o build/scale.o build/add.o build/kernels.a build/sub.o build/mean.o
else
	$(error Loafty Version is invalid: $(app_version))
endif

##==------------------------------==##

##== COMPILING PYTHON AIE TO MLIR ==##

build/aie.mlir: ${npu_code}
	mkdir -p ${@D}
	python3 $< --anten ${n_antenna} --imgsz ${image_size} > $@

build/aie_trace.mlir: ${npu_code}
	mkdir -p ${@D}
	python3 $< -t ${trace_size} --anten ${n_antenna} --imgsz ${image_size} > $@

##==-------------------------------==##

##== COMPILING NPU KERNELS WITH PEANO ==##

##### Kernels for version 0 #####
build/passthrough.o: ${kernels}/passthrough.cc
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/scale.o: ${kernels}/scale.cc
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/add.o: ${kernels}/add.cc
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/trig.o: ${kernels}/trig.cc
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/mul.o: ${kernels}/mul.cc
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/sub.o: ${kernels}/sub.cc
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/mean.o: ${kernels}/mean.cc
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/lut_ops.o: ${kernels}/lut_ops.cpp
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/kernels.a: build/trig.o build/lut_ops.o
	ar rvs $@ $+

##### Kernels for version 1 #####
# build/passthrough.o: ${kernels}/passthrough.cc
# 	mkdir -p ${@D}
# 	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

# build/mean.o: ${kernels}/mean.cc
# 	mkdir -p ${@D}
# 	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

# build/main_kernel.o: ${kernels}/main_kernel.cc
# 	mkdir -p ${@D}
# 	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

# build/lut_ops.o: ${kernels}/lut_ops.cpp
# 	mkdir -p ${@D}
# 	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

# build/kernels.a: build/main_kernel.o build/lut_ops.o
# 	ar rvs $@ $+

##### Kernels for version 2 #####
# build/passthrough.o: ${kernels}/passthrough.cc
# 	mkdir -p ${@D}
# 	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

# build/scale.o: ${kernels}/scale.cc
# 	mkdir -p ${@D}
# 	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

# build/add.o: ${kernels}/add.cc
# 	mkdir -p ${@D}
# 	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

# build/main_kernel.o: ${kernels}/main_kernel.cc
# 	mkdir -p ${@D}
# 	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

# build/sub.o: ${kernels}/sub.cc
# 	mkdir -p ${@D}
# 	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

# build/mean.o: ${kernels}/mean.cc
# 	mkdir -p ${@D}
# 	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

# build/lut_ops.o: ${kernels}/lut_ops.cpp
# 	mkdir -p ${@D}
# 	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

# build/kernels.a: build/main_kernel.o build/lut_ops.o
# 	ar rvs $@ $+

##==------------------------------------==##

##==------- GENERATING NPU CODE -------==##

# Rule for final.xclbin
build/final.xclbin: build/aie.mlir $(FINAL_DEPS)
	mkdir -p ${@D}
	cd ${@D} && aiecc.py --aie-generate-xclbin --aie-generate-npu-insts --no-compile-host \
		--no-xchesscc --no-xbridge \
		--xclbin-name=${@F} --npu-insts-name=insts.bin ${<F}

# Rule for trace.xclbin
build/trace.xclbin: build/aie_trace.mlir $(TRACE_DEPS)
	mkdir -p ${@D}
	cd ${@D} && aiecc.py --aie-generate-xclbin --aie-generate-npu-insts --no-compile-host \
		--no-xchesscc --no-xbridge \
		--xclbin-name=${@F} --npu-insts-name=insts.bin ${<F}

##==------------------------------------==##

##==------- COMPILING C++ HOST CODE -------==##

${targetname}.exe: ${cpp_host}
	rm -rf _build
	mkdir -p _build
	cd _build && ${powershell} cmake -E env CXXFLAGS="-std=c++23 -ggdb" cmake ${srcdir} -D CMAKE_C_COMPILER=gcc-13 -D CMAKE_CXX_COMPILER=g++-13 -DTARGET_NAME=${targetname} -DAPP_VERSION=${app_version}
	cd _build && ${powershell} cmake --build . --config Release
ifeq "${powershell}" "powershell.exe"
	cp _build/${targetname}.exe $@
else
	cp _build/${targetname} $@ 
endif

##==--------------------------------------==##

##==------- PARSING TRACE -------==##

parse_trace:
	${powershell} python3 ${srcdir}/utils/parse_trace.py --filename ${trace_file} --mlir build/aie_trace.mlir --colshift 1 > ${srcdir}/tracing/trace.json

##==-----------------------------==##

##==------- RUNNING CODE -------==##

run: ${targetname}.exe build/final.xclbin build/insts.bin
	${powershell} ./$< -x build/final.xclbin -i build/insts.bin -k MLIR_AIE --anten ${n_antenna} --imgsz ${image_size} --iters 10 --warmup 5 --verbosity 0 --verify false

trace: ${targetname}.exe build/trace.xclbin build/insts.bin 
	${powershell} ./$< -x build/trace.xclbin -i build/insts.bin -k MLIR_AIE -t ${trace_size} --trace_file ${trace_file} --anten ${n_antenna} --imgsz ${image_size} --iters 5 --warmup 5 --verbosity 0
	${parse_trace}

run_py: build/final.xclbin
	${powershell} python3 ${py_host} -x build/final.xclbin -i build/insts.bin -k MLIR_AIE --anten ${n_antenna} --imgsz ${image_size} --iters 10 --warmup 4 --verbosity 0

trace_py: build/trace.xclbin
	${powershell} python3 ${py_host} -x build/trace.xclbin -i build/insts.bin -k MLIR_AIE -t ${trace_size} --trace_file ${trace_file} --anten ${n_antenna} --imgsz ${image_size} --iters 10 --warmup 4 --verbosity 0
	${parse_trace}

##==-----------------------------==##

##==------- CLEAN -------==##

clean:
	rm -rf build _build ${targetname}.exe tracing/*

##==---------------------==##
