/* File : example.i */
%module example

%typemap(out) double* simul %{
	$result = PyList_New(32000);
	for (int i =0; i<32000; ++i){
		PyList_SetItem($result, i, PyFloat_FromDouble($1[i]));
	}
	delete $1;
%}

%inline %{
#define SWIG_FILE_WITH_INIT
#include "example.h"
double* simul();
double *double_array(int size) {
     return (double *) malloc(size*sizeof(double));
  }
%}

/* Let's just grab the original header file here */
%include "example.h"
extern class material;

double* simul();

