// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMY_NET_H
#define XMY_NET_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmy_net_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Crtl_bus_BaseAddress;
} XMy_net_Config;
#endif

typedef struct {
    u32 Crtl_bus_BaseAddress;
    u32 IsReady;
} XMy_net;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMy_net_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMy_net_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMy_net_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMy_net_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XMy_net_Initialize(XMy_net *InstancePtr, u16 DeviceId);
XMy_net_Config* XMy_net_LookupConfig(u16 DeviceId);
int XMy_net_CfgInitialize(XMy_net *InstancePtr, XMy_net_Config *ConfigPtr);
#else
int XMy_net_Initialize(XMy_net *InstancePtr, const char* InstanceName);
int XMy_net_Release(XMy_net *InstancePtr);
#endif

void XMy_net_Start(XMy_net *InstancePtr);
u32 XMy_net_IsDone(XMy_net *InstancePtr);
u32 XMy_net_IsIdle(XMy_net *InstancePtr);
u32 XMy_net_IsReady(XMy_net *InstancePtr);
void XMy_net_EnableAutoRestart(XMy_net *InstancePtr);
void XMy_net_DisableAutoRestart(XMy_net *InstancePtr);


void XMy_net_InterruptGlobalEnable(XMy_net *InstancePtr);
void XMy_net_InterruptGlobalDisable(XMy_net *InstancePtr);
void XMy_net_InterruptEnable(XMy_net *InstancePtr, u32 Mask);
void XMy_net_InterruptDisable(XMy_net *InstancePtr, u32 Mask);
void XMy_net_InterruptClear(XMy_net *InstancePtr, u32 Mask);
u32 XMy_net_InterruptGetEnabled(XMy_net *InstancePtr);
u32 XMy_net_InterruptGetStatus(XMy_net *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
