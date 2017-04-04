#include "example.h"
#include <iostream>
#include <cmath>
#include <stdio.h>
#include <string>


double* simul(material& mat) {
	const char* s;
	s = "material 1";
	mat.set_values(1, 1e-9, s);
	std::cout << mat.name << std::endl;
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

