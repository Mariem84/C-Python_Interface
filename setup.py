# -*- coding: utf-8 -*-
"""
Created on Fri Apr 21 11:07:42 2017

@author: my LeNoVo
"""

from setuptools import setup, Extension

example_module = Extension('_example',
                           sources=['src/example.i', 'src/example.cpp'],
                           swig_opts=['-c++'],
			   include_dirs=['C:\Users\my LeNoVo\Documents\project\include'])

setup (name = 'example',
       version = '0.1',
       ext_modules = [example_module],
       py_modules = ["example"],
       )