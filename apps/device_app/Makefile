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
trace_size = 536870912
n_antenna = 96
image_size = 128
trace_file = ${srcdir}/tracing/trace.txt


##==------------------------------==##

##== COMPILING PYTHON AIE TO MLIR ==##

build/aie.mlir: ${srcdir}/aie2.py
	mkdir -p ${@D}
	python3 $< --anten ${n_antenna} --imgsz ${image_size} > $@

build/aie_trace.mlir: ${srcdir}/aie2.py
	mkdir -p ${@D}
	python3 $< -t ${trace_size} --anten ${n_antenna} --imgsz ${image_size} > $@

##==-------------------------------==##

##== COMPILING NPU KERNELS WITH PEANO ==##

##### Kernels #####

build/add.o: ${srcdir}/kernels/add.cc
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

##==------------------------------------==##

##==------- GENERATING NPU CODE -------==##

# Rule for final.xclbin
build/final.xclbin: build/aie.mlir build/add.o
	mkdir -p ${@D}
	cd ${@D} && aiecc.py --aie-generate-xclbin --aie-generate-npu-insts --no-compile-host \
		--no-xchesscc --no-xbridge \
		--xclbin-name=${@F} --npu-insts-name=insts.bin ${<F}

# Rule for trace.xclbin
build/trace.xclbin: build/aie_trace.mlir build/add.o
	mkdir -p ${@D}
	cd ${@D} && aiecc.py --aie-generate-xclbin --aie-generate-npu-insts --no-compile-host \
		--no-xchesscc --no-xbridge \
		--xclbin-name=${@F} --npu-insts-name=insts.bin ${<F}

##==------------------------------------==##

##==------- COMPILING C++ HOST CODE -------==##

${targetname}.exe: ${srcdir}/test.cpp
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

##==-----------------------------==##

##==------- CLEAN -------==##

clean:
	rm -rf build _build ${targetname}.exe tracing/*

##==---------------------==##
