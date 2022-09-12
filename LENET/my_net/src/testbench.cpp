#include "my_net.h"
#include "ap_int.h"




int main(){
	float output[10] = {0};
	int input[3072] = {
		#include "./niao2.dat"
	};
	my_net(input,output);
	for(int j=0;j<10;j++){
		printf("%f\n",output[j]);
	}
	printf("end");
	return 0;
}

//'plane', 'car', 'bird', 'cat','deer', 'dog', 'frog', 'horse', 'ship', 'truck'

