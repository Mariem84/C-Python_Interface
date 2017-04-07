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
double* simul(Device d, Scenario s);
double *double_array(int size) {
     return (double *) malloc(size*sizeof(double));
  }

%}

%include "std_vector.i"
namespace std {
	%template(DoubleVector) vector<double>;
	%template(MaterialVector) vector<Material>;	
	%template(RegionVector) vector<Region>;
	%template(RecordVector) vector<Record>;
}

/* Let's just grab the original header file here */
%include "example.h"
extern class Record;
extern class Material;
extern class Region;
extern class Device;
extern class Scenario;
extern class Result;
double* simul(Device d, Scenario s);

