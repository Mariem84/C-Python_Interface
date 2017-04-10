/* File : example.i */
%module example


%inline %{
#define SWIG_FILE_WITH_INIT
#include "example.h"
std::vector<double> simul(Device d, Scenario s);
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
	%template(ResultVector) vector<Result>;
}

/* Let's just grab the original header file here */
%include "example.h"
extern class Record;
extern class Material;
extern class Region;
extern class Device;
extern class Scenario;
extern class Result;
std::vector<double> simul(Device d, Scenario s);

