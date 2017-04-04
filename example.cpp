#include "example.h"
#include <iostream>
#include <cmath>
#include <stdio.h>


double* simul() {
	double* t = new double[32000];
	for (int i=0; i<32000; ++i){
		t[i] = i * 5/31999;
		}
	double* a = new double[32000];
	for (int i=0; i<32000; ++i){
		a[i] = std::exp(t[i]);
		}
	return a;
}

