all:
	swig -c++ -python example.i
	c++ -fPIC -c example_wrap.cxx -I/usr/include/python2.7
	c++ -L/usr/lib -lpython2.7 -lpthread -ldl  -lutil -lm  -Xlinker -export-dynamic -Wl,-O1 -Wl,-Bsymbolic-functions -shared example.o example_wrap.o -o _example.so

