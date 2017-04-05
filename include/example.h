/* File : example.h */

class material 
{
public:
	int mat_index;
	float length;
	const char* name;
	void set_values(int x, int y,const char* s){
		mat_index = x;
		length = y;
		name = s;
		};
};



