#include "example.h"
#include <iostream>
#include <cmath>
#include <stdio.h>
#include <string>
#include <vector>


std::vector<double>& simul(Device d, Scenario s) {
	std::vector<double> t(32000);
	for (int i=0; i<32000; i++){
		t[i] = i;
		}
	std::vector<double>& a(32000); 
	for (int i=0; i<32000; i++){
		a[i] = std::exp(t[i]);
		}

	return a;
}

