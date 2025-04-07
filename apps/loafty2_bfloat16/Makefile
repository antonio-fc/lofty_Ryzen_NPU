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
trace_size = 256000
n_antenna = 96 # make sure to run 'make clean' after changing this
image_size = 256 # make sure to run 'make clean' after changing this
trace_file = tracing/trace.txt

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

build/passthrough.o: ${srcdir}/kernels/passthrough.cc
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/scale.o: ${srcdir}/kernels/scale.cc
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/add.o: ${srcdir}/kernels/add.cc
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/main_kernel.o: ${srcdir}/kernels/main_kernel.cc
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/sub.o: ${srcdir}/kernels/sub.cc
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/mean.o: ${srcdir}/kernels/mean.cc
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/lut_ops.o: ${srcdir}/kernels/lut_ops.cpp
	mkdir -p ${@D}
	cd ${@D} && ${PEANO_INSTALL_DIR}/bin/clang++ ${PEANOWRAP2_FLAGS} -c $< -o ${@F}

build/kernels.a: build/main_kernel.o build/lut_ops.o
	ar rvs $@ $+

##==------------------------------------==##

##==------- GENERATING NPU CODE -------==##

build/final.xclbin: build/aie.mlir build/passthrough.o build/scale.o build/add.o build/kernels.a build/sub.o build/mean.o
	mkdir -p ${@D}
	cd ${@D} && aiecc.py --aie-generate-xclbin --aie-generate-npu-insts --no-compile-host \
		--no-xchesscc --no-xbridge \
		--xclbin-name=${@F} --npu-insts-name=insts.bin ${<F}

build/trace.xclbin: build/aie_trace.mlir build/passthrough.o build/scale.o build/add.o build/kernels.a build/sub.o build/mean.o
	mkdir -p ${@D}
	cd ${@D} && aiecc.py --aie-generate-xclbin --aie-generate-npu-insts --no-compile-host \
		--no-xchesscc --no-xbridge \
		--xclbin-name=${@F} --npu-insts-name=insts.bin ${<F}

##==------------------------------------==##

##==------- COMPILING C++ HOST CODE -------==##

${targetname}.exe: ${srcdir}/test.cpp
	rm -rf _build
	mkdir -p _build
	cd _build && ${powershell} cmake -E env CXXFLAGS="-std=c++23 -ggdb" cmake ${srcdir} -D CMAKE_C_COMPILER=gcc-13 -D CMAKE_CXX_COMPILER=g++-13 -DTARGET_NAME=${targetname} 
	cd _build && ${powershell} cmake --build . --config Release
ifeq "${powershell}" "powershell.exe"
	cp _build/${targetname}.exe $@
else
	cp _build/${targetname} $@ 
endif

##==--------------------------------------==##

##==------- PARSING TRACE -------==##

parse_trace:
	${powershell} python3 ${srcdir}/utils/parse_trace.py --filename ${trace_file} --mlir build/aie_trace.mlir --colshift 1 > tracing/trace.json

##==-----------------------------==##

##==------- RUNNING CODE -------==##

run: ${targetname}.exe build/final.xclbin build/insts.txt 
	${powershell} ./$< -x build/final.xclbin -i build/insts.bin -k MLIR_AIE --anten ${n_antenna} --imgsz ${image_size} --iters 10 --warmup 4 --verbosity 0

trace: ${targetname}.exe build/trace.xclbin build/insts.txt 
	${powershell} ./$< -x build/trace.xclbin -i build/insts.bin -k MLIR_AIE -t ${trace_size} --trace_file ${trace_file} --anten ${n_antenna} --imgsz ${image_size} --iters 10 --warmup 4 --verbosity 1
	${parse_trace}

run_py: build/final.xclbin
	${powershell} python3 ${srcdir}/test.py -x build/final.xclbin -i build/insts.bin -k MLIR_AIE --anten ${n_antenna} --imgsz ${image_size} --iters 10 --warmup 4 --verbosity 0

trace_py: build/trace.xclbin
	${powershell} python3 ${srcdir}/test.py -x build/trace.xclbin -i build/insts.bin -k MLIR_AIE -t ${trace_size} --trace_file ${trace_file} --anten ${n_antenna} --imgsz ${image_size} --iters 10 --warmup 4 --verbosity 1
	${parse_trace}

##==-----------------------------==##

##==------- CLEAN -------==##

clean:
	rm -rf build _build ${targetname}.exe tracing/*

##==---------------------==##
