// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xmy_net.h"

extern XMy_net_Config XMy_net_ConfigTable[];

XMy_net_Config *XMy_net_LookupConfig(u16 DeviceId) {
	XMy_net_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMY_NET_NUM_INSTANCES; Index++) {
		if (XMy_net_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMy_net_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMy_net_Initialize(XMy_net *InstancePtr, u16 DeviceId) {
	XMy_net_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMy_net_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMy_net_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

