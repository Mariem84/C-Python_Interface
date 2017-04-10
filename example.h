/* File : example.h */
#include <vector>

class Record
{
public:
	const char* name;
	double interval;
	int row_index;
	int col_index;
};

class Material 
{
public:
	const char* name;
	double epsilon_r;
	double mu_r;
	double sigma;
	void set_values(const char* s, double x, double y, double z){
		name = s;
		epsilon_r = x;
		mu_r = y;
		sigma = z;
		};
};


class Region
{
public:
	const char* name;
	double x_start;
	double x_end;
	int material_index;
};

class Device
{
public:
	const char* name;
	std::vector<Material> materials;
	std::vector<Region> regions;
	void push(Material& mat){
		materials.push_back(mat);
		};
};

class Scenario
{
public:
	const char* name;
	double total_time;
	double timestep;
	std::vector<Record> records;
};

class Result
{
public:
	const char* name;
	std::vector<double> data;
};

