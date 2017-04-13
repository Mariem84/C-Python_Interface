#include "example.h"
#include <iostream>
#include <cmath>
#include <stdio.h>
#include <string>
#include <vector>


std::vector<Result> simul(Device d, Scenario s) {
	std::vector<double> t(100);
	for (int i=0; i<100; i++){
		t[i] = i;
		}
	std::vector<double> v(100);
	for (int i=0; i<100; i++){
		v[i] = std::exp(t[i]);
		}
	int nbr = s.get_s_records().size();
	std::vector<Result> a(nbr); 
	for (int i=0; i<nbr; i++){
		a[i].set_r_data(v);
		}
	return a;
}

