from distutils.core import setup, Extension


example_module = Extension('_example', sources=['example.i', 'example.cpp'], swig_opts=['-c++'], library_dirs = ['/usr/lib'], libraries = ['python2.7', 'pthread', 'dl',  'util', 'm'], include_dirs = ['/usr/include/python2.7'])

setup(name='example', ext_modules=[example_module], py_modules=["example"])
