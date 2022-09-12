#ifndef _MYNET_
#define _MYNET_

#include "stdio.h"
#include "math.h"
#include "hls_half.h"
#include "ap_int.h"

void my_net(int input[3072],float output[10]);
void conv2(half *input,half *weight,half *output,int in_row,int out_row,int core);
void Sigmoid1( half *a,int size);
void pool(half *input,half *output,int in_row,int out_row);



#endif
