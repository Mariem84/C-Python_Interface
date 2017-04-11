/* File : example.h */
#include <vector>
#include <string>


class Record
{
private:
	std::string rec_name;
	double rec_interval;
	int rec_row_index;
	int rec_col_index;
public:
	const std::string& get_rec_name() {return rec_name;};
	double get_rec_interval() {return rec_interval;};
	int get_rec_row_index() {return rec_row_index;};
	int get_rec_col_index() {return rec_col_index;};
	const std::string& set_rec_name(const std::string& name) {rec_name = name;};
	double set_rec_interval(double interval) {rec_interval = interval;};
	int set_rec_row_index(int row_index) {rec_row_index = row_index;};
	int set_rec_col_index(int col_index) {rec_col_index = col_index;};
};

class Material  
{
private:
	std::string m_name;
	double m_epsilon_r;
	double m_mu_r;
	double m_sigma;
public:
	const std::string& get_m_name() {return m_name;};
	double get_m_epsilon_r() {return m_epsilon_r;};
	double get_m_mu_r() {return m_mu_r;};
	double get_m_sigma() {return m_sigma;};
	const std::string& set_m_name(const std::string& name) {m_name = name;};
	double set_m_epsilon_r(double epsilon_r) {m_epsilon_r = epsilon_r;};
	double set_m_mu_r(double mu_r) {m_mu_r = mu_r;};
	double set_m_sigma(double sigma) {m_sigma = sigma;};
};


class Region
{
private:
	std::string reg_name;
	double reg_x_start;
	double reg_x_end;
	int reg_material_index;
public:
	const std::string& get_reg_name() {return reg_name;};
	double get_reg_x_start() {return reg_x_start;};
	double get_reg_x_end() {return reg_x_end;};
	int get_reg_material_index() {return reg_material_index;};
	const std::string& set_reg_name(const std::string& name) {reg_name = name;};
	double set_reg_x_start(double x_start) {reg_x_start = x_start;};
	double set_reg_x_end(double x_end) {reg_x_end = x_end;};
	int set_reg_material_index(int material_index) {reg_material_index = material_index;};
};

class Device
{
private:
	std::string d_name;
	std::vector<Material> d_materials;
	std::vector<Region> d_regions;
public:
	const std::string& get_d_name() {return d_name;};
	std::vector<Material>& get_d_materials() {return d_materials;};
	std::vector<Region>& get_d_regions() {return d_regions;};
	const std::string& set_d_name(const std::string& name) {d_name = name;};
	std::vector<Material>& set_d_materials(std::vector<Material>& materials) {d_materials = materials;};
	std::vector<Region>& set_d_regions(std::vector<Region>& regions) {d_regions = regions;};
};

class Scenario
{
private:
	std::string s_name;
	double s_total_time;
	double s_timestep;
	std::vector<Record> s_records;
public:
	const std::string& get_s_name() {return s_name;};
	double get_s_total_time() {return s_total_time;};
	double get_s_timestep() {return s_timestep;};
	std::vector<Record>& get_s_records() {return s_records;};
	const std::string& set_s_name(const std::string& name) {s_name = name;};
	double set_s_total_time(double total_time) {s_total_time = total_time;};
	double set_s_timestep(double timestep) {s_timestep = timestep;};
	std::vector<Record>& set_s_records(std::vector<Record>& records) {s_records = records;};	
};

class Result
{
private:
	std::string r_name;	
	std::vector<double> r_data;
public:
	const std::string& get_r_name() {return r_name;};
	std::vector<double> get_r_data() {return r_data;};
	const std::string& set_r_name(const std::string& name) {r_name = name;};
	std::vector<double>& set_r_data(std::vector<double>& data) {r_data = data;};	
};
