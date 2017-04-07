#include "example.h"
#include <iostream>
#include <cmath>
#include <stdio.h>
#include <string>


double* simul(Device d, Scenario s) {
	double* ti = new double[32000];
	for (int i=0; i<32000; i++){
		ti[i] = i * 1000/31999;
		}
	for (int i=0; i<32; ++i)
		std::cout << ti[i] << std::endl;
	double* a = new double[32000];
	for (int i=0; i<32000; i++){
		a[i] = std::exp(ti[i]);
		}

	return a;
}

