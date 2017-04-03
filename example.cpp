#include "example.h"
#include <iostream>



double* simul() {
	double* a = new double[32000];
	for (int i=0; i<32000; ++i){
		a[i] = 20;
		}
	return a;
}

