// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtest_direct_dma.h"

extern XTest_direct_dma_Config XTest_direct_dma_ConfigTable[];

XTest_direct_dma_Config *XTest_direct_dma_LookupConfig(u16 DeviceId) {
	XTest_direct_dma_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTEST_DIRECT_DMA_NUM_INSTANCES; Index++) {
		if (XTest_direct_dma_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTest_direct_dma_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTest_direct_dma_Initialize(XTest_direct_dma *InstancePtr, u16 DeviceId) {
	XTest_direct_dma_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTest_direct_dma_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTest_direct_dma_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

