# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2014.1
# Copyright (C) 2014 Xilinx Inc. All rights reserved.
# 
# ==============================================================

CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_OPENCV__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

ObjDir = obj

HLS_SOURCES = ../../../source/test_direct_dma_testbench.cpp ../../../source/test_direct_dma.cpp

TARGET := csim.exe

AUTOPILOT_ROOT := /Xilinx/Vivado_HLS/2014.1
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /Xilinx/Vivado_HLS/2014.1/lnx64/tools/gcc/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_OPENCV__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -g



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/test_direct_dma_testbench.o: ../../../source/test_direct_dma_testbench.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../source/test_direct_dma_testbench.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD    $(IFLAG) $(DFLAG)  $< -o $@ ; \

-include $(ObjDir)/test_direct_dma_testbench.d

$(ObjDir)/test_direct_dma.o: ../../../source/test_direct_dma.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../source/test_direct_dma.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) -c -MMD    $(IFLAG) $(DFLAG)  $< -o $@ ; \

-include $(ObjDir)/test_direct_dma.d