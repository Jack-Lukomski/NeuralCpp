# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /root/neuralcpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/neuralcpp/build

# Include any dependencies generated for this target.
include sources/modules/CMakeFiles/nn.dir/depend.make

# Include the progress variables for this target.
include sources/modules/CMakeFiles/nn.dir/progress.make

# Include the compile flags for this target's objects.
include sources/modules/CMakeFiles/nn.dir/flags.make

sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.o: sources/modules/CMakeFiles/nn.dir/flags.make
sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.o: ../sources/modules/NeuralNetwork.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/neuralcpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.o"
	cd /root/neuralcpp/build/sources/modules && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nn.dir/NeuralNetwork.cpp.o -c /root/neuralcpp/sources/modules/NeuralNetwork.cpp

sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nn.dir/NeuralNetwork.cpp.i"
	cd /root/neuralcpp/build/sources/modules && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/neuralcpp/sources/modules/NeuralNetwork.cpp > CMakeFiles/nn.dir/NeuralNetwork.cpp.i

sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nn.dir/NeuralNetwork.cpp.s"
	cd /root/neuralcpp/build/sources/modules && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/neuralcpp/sources/modules/NeuralNetwork.cpp -o CMakeFiles/nn.dir/NeuralNetwork.cpp.s

sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.o.requires:

.PHONY : sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.o.requires

sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.o.provides: sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.o.requires
	$(MAKE) -f sources/modules/CMakeFiles/nn.dir/build.make sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.o.provides.build
.PHONY : sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.o.provides

sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.o.provides.build: sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.o


# Object files for target nn
nn_OBJECTS = \
"CMakeFiles/nn.dir/NeuralNetwork.cpp.o"

# External object files for target nn
nn_EXTERNAL_OBJECTS =

sources/modules/libnn.a: sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.o
sources/modules/libnn.a: sources/modules/CMakeFiles/nn.dir/build.make
sources/modules/libnn.a: sources/modules/CMakeFiles/nn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/neuralcpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libnn.a"
	cd /root/neuralcpp/build/sources/modules && $(CMAKE_COMMAND) -P CMakeFiles/nn.dir/cmake_clean_target.cmake
	cd /root/neuralcpp/build/sources/modules && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sources/modules/CMakeFiles/nn.dir/build: sources/modules/libnn.a

.PHONY : sources/modules/CMakeFiles/nn.dir/build

sources/modules/CMakeFiles/nn.dir/requires: sources/modules/CMakeFiles/nn.dir/NeuralNetwork.cpp.o.requires

.PHONY : sources/modules/CMakeFiles/nn.dir/requires

sources/modules/CMakeFiles/nn.dir/clean:
	cd /root/neuralcpp/build/sources/modules && $(CMAKE_COMMAND) -P CMakeFiles/nn.dir/cmake_clean.cmake
.PHONY : sources/modules/CMakeFiles/nn.dir/clean

sources/modules/CMakeFiles/nn.dir/depend:
	cd /root/neuralcpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/neuralcpp /root/neuralcpp/sources/modules /root/neuralcpp/build /root/neuralcpp/build/sources/modules /root/neuralcpp/build/sources/modules/CMakeFiles/nn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sources/modules/CMakeFiles/nn.dir/depend
