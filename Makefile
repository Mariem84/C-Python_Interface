
example.so: example_wrap.cxx example.cpp example.h example.i
	
	c++ -fPIC -I/usr/include/python2.7 -I/usr/include/x86_64-linux-gnu/python2.7 -lpython2.7 -c example.cpp example_wrap.cxx
	c++ -shared example.o example_wrap.o -L/usr/lib/python2.7/config-x86_64-linux-gnu -L/usr/lib -lpython2.7 -lpthread -ldl  -lutil -lm -o _example.so

clean:
	rm -rf *.o
	rm -rf *.so

