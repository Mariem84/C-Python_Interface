#include "example.h"
#include <iostream>



double* simul() {
	double* a = new double[32000];
	for (size_t i; i<32000; ++i){
		a[i] = 20;
		}
	return a;
}

