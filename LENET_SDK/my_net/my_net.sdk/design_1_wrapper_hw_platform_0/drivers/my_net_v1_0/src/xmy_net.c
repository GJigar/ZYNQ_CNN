// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xmy_net.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMy_net_CfgInitialize(XMy_net *InstancePtr, XMy_net_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Crtl_bus_BaseAddress = ConfigPtr->Crtl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMy_net_Start(XMy_net *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_net_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_AP_CTRL) & 0x80;
    XMy_net_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMy_net_IsDone(XMy_net *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_net_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMy_net_IsIdle(XMy_net *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_net_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMy_net_IsReady(XMy_net *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMy_net_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMy_net_EnableAutoRestart(XMy_net *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_net_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_AP_CTRL, 0x80);
}

void XMy_net_DisableAutoRestart(XMy_net *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_net_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_AP_CTRL, 0);
}

void XMy_net_InterruptGlobalEnable(XMy_net *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_net_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_GIE, 1);
}

void XMy_net_InterruptGlobalDisable(XMy_net *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_net_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_GIE, 0);
}

void XMy_net_InterruptEnable(XMy_net *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMy_net_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_IER);
    XMy_net_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_IER, Register | Mask);
}

void XMy_net_InterruptDisable(XMy_net *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMy_net_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_IER);
    XMy_net_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_IER, Register & (~Mask));
}

void XMy_net_InterruptClear(XMy_net *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMy_net_WriteReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_ISR, Mask);
}

u32 XMy_net_InterruptGetEnabled(XMy_net *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMy_net_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_IER);
}

u32 XMy_net_InterruptGetStatus(XMy_net *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMy_net_ReadReg(InstancePtr->Crtl_bus_BaseAddress, XMY_NET_CRTL_BUS_ADDR_ISR);
}

