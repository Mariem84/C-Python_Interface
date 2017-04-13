/* File : example.i */
%module example


%inline %{
#define SWIG_FILE_WITH_INIT
#include "example.h"
std::vector<Result> simul(Device d, Scenario s);
double *double_array(int size) {
     return (double *) malloc(size*sizeof(double));
  }

%}

%include "std_string.i"
%apply const std::string& {std::string* rec_name}
%apply const std::string& {std::string* reg_name}
%apply const std::string& {std::string* m_name}
%apply const std::string& {std::string* d_name}
%apply const std::string& {std::string* s_name}
%apply const std::string& {std::string* r_name}

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
std::vector<Result> simul(Device d, Scenario s);

