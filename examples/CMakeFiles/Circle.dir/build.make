# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /mnt/c/Users/carson/Documents/school/cs657/project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/carson/Documents/school/cs657/project

# Include any dependencies generated for this target.
include examples/CMakeFiles/Circle.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/Circle.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/Circle.dir/flags.make

examples/CMakeFiles/Circle.dir/Circle.cpp.o: examples/CMakeFiles/Circle.dir/flags.make
examples/CMakeFiles/Circle.dir/Circle.cpp.o: examples/Circle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/carson/Documents/school/cs657/project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/CMakeFiles/Circle.dir/Circle.cpp.o"
	cd /mnt/c/Users/carson/Documents/school/cs657/project/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Circle.dir/Circle.cpp.o -c /mnt/c/Users/carson/Documents/school/cs657/project/examples/Circle.cpp

examples/CMakeFiles/Circle.dir/Circle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Circle.dir/Circle.cpp.i"
	cd /mnt/c/Users/carson/Documents/school/cs657/project/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/carson/Documents/school/cs657/project/examples/Circle.cpp > CMakeFiles/Circle.dir/Circle.cpp.i

examples/CMakeFiles/Circle.dir/Circle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Circle.dir/Circle.cpp.s"
	cd /mnt/c/Users/carson/Documents/school/cs657/project/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/carson/Documents/school/cs657/project/examples/Circle.cpp -o CMakeFiles/Circle.dir/Circle.cpp.s

# Object files for target Circle
Circle_OBJECTS = \
"CMakeFiles/Circle.dir/Circle.cpp.o"

# External object files for target Circle
Circle_EXTERNAL_OBJECTS =

examples/Circle: examples/CMakeFiles/Circle.dir/Circle.cpp.o
examples/Circle: examples/CMakeFiles/Circle.dir/build.make
examples/Circle: src/libRVO.so.2.0.3
examples/Circle: examples/CMakeFiles/Circle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/carson/Documents/school/cs657/project/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Circle"
	cd /mnt/c/Users/carson/Documents/school/cs657/project/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Circle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/Circle.dir/build: examples/Circle

.PHONY : examples/CMakeFiles/Circle.dir/build

examples/CMakeFiles/Circle.dir/clean:
	cd /mnt/c/Users/carson/Documents/school/cs657/project/examples && $(CMAKE_COMMAND) -P CMakeFiles/Circle.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/Circle.dir/clean

examples/CMakeFiles/Circle.dir/depend:
	cd /mnt/c/Users/carson/Documents/school/cs657/project && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/carson/Documents/school/cs657/project /mnt/c/Users/carson/Documents/school/cs657/project/examples /mnt/c/Users/carson/Documents/school/cs657/project /mnt/c/Users/carson/Documents/school/cs657/project/examples /mnt/c/Users/carson/Documents/school/cs657/project/examples/CMakeFiles/Circle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/Circle.dir/depend

