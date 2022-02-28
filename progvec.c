#include <stdio.h>
#include <stdlib.h>

#define VSIZE 4

int main(int argc, char** argv){

	float a[VSIZE], b[VSIZE], c[VSIZE];
	
	for(int i = 0; i < VSIZE; ++i){
		a[i] = i;
		b[i] = i * 0.33 * a[i];
		c[i] = i * 0.44 * b[i];
		a[i] = i * 0.22 * c[i];
	}
	
	for(int i = 0; i < VSIZE; i++)
		printf("%d ", c[i]);
	printf("\n");
	
	for(int i = 0; i < VSIZE; i++)
		c[i] = b[i] + a[i];
	
	for(int i = 0; i < VSIZE; i++)
		printf("%d ", a[i]);
	printf("\n");
	
	for(int i = 0; i < VSIZE; i++)
		printf("%d ", b[i]);
	printf("\n");
	
	for(int i = 0; i < VSIZE; i++)
		printf("%d ", c[i]);
	printf("\n");
	
}