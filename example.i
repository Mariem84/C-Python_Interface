/* File : example.i */
%module example
%inline %{
#define SWIG_FILE_WITH_INIT
#include "example.h"
double* simul();
%}

/* Let's just grab the original header file here */
%include "example.h"
extern class material;
double* simul();

