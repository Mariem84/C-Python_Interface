# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kthiri/Project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kthiri/Project

# Include any dependencies generated for this target.
include CMakeFiles/_example.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/_example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/_example.dir/flags.make

examplePYTHON_wrap.cxx: example.i
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/kthiri/Project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Swig source"
	/usr/bin/cmake -E make_directory /home/kthiri/Project
	/usr/bin/swig2.0 -python -c++ -outdir /home/kthiri/Project -c++ -I/usr/include/python2.7 -I/home/kthiri/Project -I/usr/src/linux-headers-4.8.0-36-generic/include -o /home/kthiri/Project/examplePYTHON_wrap.cxx /home/kthiri/Project/example.i

example.py: examplePYTHON_wrap.cxx
	@$(CMAKE_COMMAND) -E touch_nocreate example.py

CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o: CMakeFiles/_example.dir/flags.make
CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o: examplePYTHON_wrap.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kthiri/Project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o -c /home/kthiri/Project/examplePYTHON_wrap.cxx

CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kthiri/Project/examplePYTHON_wrap.cxx > CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.i

CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kthiri/Project/examplePYTHON_wrap.cxx -o CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.s

CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o.requires:

.PHONY : CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o.requires

CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o.provides: CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o.requires
	$(MAKE) -f CMakeFiles/_example.dir/build.make CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o.provides.build
.PHONY : CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o.provides

CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o.provides.build: CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o


CMakeFiles/_example.dir/example.cpp.o: CMakeFiles/_example.dir/flags.make
CMakeFiles/_example.dir/example.cpp.o: example.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kthiri/Project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/_example.dir/example.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/_example.dir/example.cpp.o -c /home/kthiri/Project/example.cpp

CMakeFiles/_example.dir/example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_example.dir/example.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kthiri/Project/example.cpp > CMakeFiles/_example.dir/example.cpp.i

CMakeFiles/_example.dir/example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_example.dir/example.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kthiri/Project/example.cpp -o CMakeFiles/_example.dir/example.cpp.s

CMakeFiles/_example.dir/example.cpp.o.requires:

.PHONY : CMakeFiles/_example.dir/example.cpp.o.requires

CMakeFiles/_example.dir/example.cpp.o.provides: CMakeFiles/_example.dir/example.cpp.o.requires
	$(MAKE) -f CMakeFiles/_example.dir/build.make CMakeFiles/_example.dir/example.cpp.o.provides.build
.PHONY : CMakeFiles/_example.dir/example.cpp.o.provides

CMakeFiles/_example.dir/example.cpp.o.provides.build: CMakeFiles/_example.dir/example.cpp.o


# Object files for target _example
_example_OBJECTS = \
"CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o" \
"CMakeFiles/_example.dir/example.cpp.o"

# External object files for target _example
_example_EXTERNAL_OBJECTS =

_example.so: CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o
_example.so: CMakeFiles/_example.dir/example.cpp.o
_example.so: CMakeFiles/_example.dir/build.make
_example.so: /usr/lib/x86_64-linux-gnu/libpython2.7.so
_example.so: CMakeFiles/_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kthiri/Project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared module _example.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/_example.dir/build: _example.so

.PHONY : CMakeFiles/_example.dir/build

CMakeFiles/_example.dir/requires: CMakeFiles/_example.dir/examplePYTHON_wrap.cxx.o.requires
CMakeFiles/_example.dir/requires: CMakeFiles/_example.dir/example.cpp.o.requires

.PHONY : CMakeFiles/_example.dir/requires

CMakeFiles/_example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/_example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/_example.dir/clean

CMakeFiles/_example.dir/depend: examplePYTHON_wrap.cxx
CMakeFiles/_example.dir/depend: example.py
	cd /home/kthiri/Project && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kthiri/Project /home/kthiri/Project /home/kthiri/Project /home/kthiri/Project /home/kthiri/Project/CMakeFiles/_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/_example.dir/depend

