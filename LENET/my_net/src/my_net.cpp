#include "my_net.h"


#define MAX(A,B) ((A<B)?B:A);

void conv2(half* input,const half* weight, half* output, int in_row, int out_row, int core) {
Row:
	for (int r = 0; r < out_row; r++)
	{
	Column:
		for (int c = 0; c < out_row; c++)
		{
		Kernel_Row:
			for (int kr = 0; kr < core; kr++)
			{
			Kernel_Column:
				for (int kc = 0; kc < core; kc++)
				{
					output[r * out_row + c] += input[(r + kr) * in_row + (c + kc)] * weight[kr * core + kc];
				}
			}
		}

	}
}

void pool(half* input, half* output, int in_row, int out_row) { //6 3
	for (int i = 0; i < out_row; i++) {
		for (int j = 0; j < out_row; j++) {
			output[i * out_row + j] = input[i * 2 * in_row + j * 2];
			for (int k = 0; k < 2; k++) {
				for (int m = 0; m < 2; m++) {
					output[i * out_row + j] = MAX(output[i * out_row + j], input[(i*2 + k) * in_row + (j*2 + m)]);
				}
			}
		}
	}

}

void Sigmoid1(half* a, int size)
{
	for (int i = 0; i < size; i++)
		a[i] = 1 / (1 + expf(-a[i]));
}

void my_net(int input[3072], float output[10]) {
	#pragma HLS INTERFACE bram port=output
	#pragma HLS INTERFACE bram port=input
	#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS

	half input1[3][1024];//3 32x32
	//input_init
	for (int i = 0; i < 3; i++) {
		for (int j = 0; j < 1024; j++) {
			input1[i][j] = half(input[i + j * 3]);
		}
	}

	const half conv1_weight[16][3][25] = { //rgb三通道，16个卷积核，5x5大小
		#include "./weight/conv1_weight.dat" //---------------------------------------//
	};

	const half conv2_weight[32][16][25] = { //16个通道，32个卷积核，5x5大小  32x16x5x5
		#include "./weight/conv2_weight.dat"
	};

	const half conv1_bias[16] = {
		#include "./weight/conv1_bias.dat"
	};
	const half conv2_bias[32] = {
		#include "./weight/conv2_bias.dat"
	};
	const half fc1_weight1[48000] = { //32个通道，5x5的输入，120个输出值
		#include "./weight/fc1_weight1.dat"
	};
	const half fc1_weight2[48000] = { //32个通道，5x5的输入，120个输出值
		#include "./weight/fc1_weight2.dat"
	};
	const half fc2_weight[10080] = {  //120x84
		#include "./weight/fc2_weight.dat"
	};
	const half fc3_weight[840] = { //84x10
		#include "./weight/fc3_weight.dat"
	};
	const half fc1_bias[120] = {
		#include "./weight/fc1_bias.dat"
	};
	const half fc2_bias[84] = {
		#include "./weight/fc2_bias.dat"
	};
	const half fc3_bias[10] = {
		#include "./weight/fc3_bias.dat"
	};



	half conv1_output[16][784] ; //28x28
	half pool1_output[16][196] ; //14x14
	half conv2_output[32][100] ; //10x10
	half pool2_output[32][25] ; //5x5
	half fc1_output[120] ;
	half fc2_output[84] ;
	half fc3_output[10] ;

	////////卷积池化第一层//////
	for (int i = 0; i < 16; i++) //16个卷积核
	{
		half output1[784] = { 0 };
		half output2[784] = { 0 };
		// compute z for neuron
		for (int j = 0; j < 3; j++) { //rgb3通道
			conv2(input1[j], conv1_weight[i][j], output1, 32, 28, 5);
			for (int n = 0; n < 28 * 28; n++) {
				output2[n] = output2[n] + output1[n];
			}
		}
		for (int k = 0; k < 28 * 28; k++) {
			conv1_output[i][k] = output2[k] + conv1_bias[i];
		}
		Sigmoid1(conv1_output[i], 784);
//		for (int m = 0; m < 784;m++) {
//				printf("conv1_output=%f\n", conv1_output[i][m]);
//
//		}

	}


	for (int i = 0; i < 16; i++) {
		pool(conv1_output[i], pool1_output[i], 28, 14);

	}

	///////卷积池化第二层///////////
	for (int i = 0; i < 32; i++) //32个卷积核
	{
		half output1[100] = { 0 };
		half output2[100] = { 0 };
		// compute z for neuron
		for (int j = 0; j < 16; j++) { //rgb3通道
			conv2(pool1_output[j], conv2_weight[i][j], output1, 14, 10, 5);

			for (int n = 0; n < 100; n++) {
				output2[n] = output2[n] + output1[n];
			}
		}
		for (int k = 0; k < 100; k++) {
			conv2_output[i][k] = output2[k] + conv2_bias[i];
		}
		Sigmoid1(conv2_output[i], 100);

	}

	for (int i = 0; i < 32; i++) {
		pool(conv2_output[i], pool2_output[i], 10, 5);

	}

	half pool2_output1[800];
	for (int i = 0; i < 32; i++) {
		for (int j = 0; j < 25; j++) {
			pool2_output1[i * 25 + j] = pool2_output[i][j];
		}
	}

	///////全连接第一层//////////
	for (int i = 0; i < 60; i++) {

		for (int j = 0; j < 800; j++) {
			fc1_output[i] = fc1_output[i] + pool2_output1[j] * fc1_weight1[i * 800 + j];
		}
		fc1_output[i] = fc1_output[i] + fc1_bias[i];
	}
	for (int i = 0; i < 60; i++) {
		for (int j = 0; j < 800; j++) {
			fc1_output[i + 60] = fc1_output[i+60] + pool2_output1[j] * fc1_weight2[i * 800 + j];
		}
		fc1_output[i + 60] = fc1_output[i + 60] + fc1_bias[i + 60];

	}
	Sigmoid1(fc1_output, 120);

	///////全连接第二层//////////
	for (int i = 0; i < 84; i++) {
		for (int j = 0; j < 120; j++) {
			fc2_output[i] += fc1_output[j] * fc2_weight[i * 120 + j];
		}
		fc2_output[i] += fc2_bias[i];

	}
	Sigmoid1(fc2_output, 84);

	///////全连接第三层//////////
	for (int i = 0; i < 10; i++) {
		for (int j = 0; j < 84; j++) {
			fc3_output[i] += fc2_output[j] * fc3_weight[i * 84 + j];
		}
		fc3_output[i] += fc3_bias[i];

	}
	Sigmoid1(fc3_output, 10);
//	for (int i = 0; i < 10;i++) {
//		printf("fc3_output=%f\n", fc3_output[i]);
//	}

	for (int i = 0; i < 10; i++) {
		output[i] = float(fc3_output[i]);
	}

}
