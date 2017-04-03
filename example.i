/* File : example.i */
%module example
%{
#define SWIG_FILE_WITH_INIT
#include "example.h"
%}

/* Let's just grab the original header file here */
%include "example.h"
extern class material;
double simul();

