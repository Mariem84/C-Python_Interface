#include "example.h"
#include <iostream>
#include <cstdlib>



double* simul() {
	double* a = new double[32000];
	for (int i=0; i<32000; ++i){
		a[i] = rand() % 20;
		}
	return a;
}

