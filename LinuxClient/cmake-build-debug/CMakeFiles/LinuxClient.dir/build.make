# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /opt/clion-2018.3.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2018.3.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rickflar/lab4/ot-task4-Rickflar/LinuxClient

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rickflar/lab4/ot-task4-Rickflar/LinuxClient/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/LinuxClient.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LinuxClient.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LinuxClient.dir/flags.make

CMakeFiles/LinuxClient.dir/main.cpp.o: CMakeFiles/LinuxClient.dir/flags.make
CMakeFiles/LinuxClient.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rickflar/lab4/ot-task4-Rickflar/LinuxClient/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LinuxClient.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LinuxClient.dir/main.cpp.o -c /home/rickflar/lab4/ot-task4-Rickflar/LinuxClient/main.cpp

CMakeFiles/LinuxClient.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LinuxClient.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rickflar/lab4/ot-task4-Rickflar/LinuxClient/main.cpp > CMakeFiles/LinuxClient.dir/main.cpp.i

CMakeFiles/LinuxClient.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LinuxClient.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rickflar/lab4/ot-task4-Rickflar/LinuxClient/main.cpp -o CMakeFiles/LinuxClient.dir/main.cpp.s

# Object files for target LinuxClient
LinuxClient_OBJECTS = \
"CMakeFiles/LinuxClient.dir/main.cpp.o"

# External object files for target LinuxClient
LinuxClient_EXTERNAL_OBJECTS =

LinuxClient: CMakeFiles/LinuxClient.dir/main.cpp.o
LinuxClient: CMakeFiles/LinuxClient.dir/build.make
LinuxClient: CMakeFiles/LinuxClient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rickflar/lab4/ot-task4-Rickflar/LinuxClient/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LinuxClient"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LinuxClient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LinuxClient.dir/build: LinuxClient

.PHONY : CMakeFiles/LinuxClient.dir/build

CMakeFiles/LinuxClient.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LinuxClient.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LinuxClient.dir/clean

CMakeFiles/LinuxClient.dir/depend:
	cd /home/rickflar/lab4/ot-task4-Rickflar/LinuxClient/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rickflar/lab4/ot-task4-Rickflar/LinuxClient /home/rickflar/lab4/ot-task4-Rickflar/LinuxClient /home/rickflar/lab4/ot-task4-Rickflar/LinuxClient/cmake-build-debug /home/rickflar/lab4/ot-task4-Rickflar/LinuxClient/cmake-build-debug /home/rickflar/lab4/ot-task4-Rickflar/LinuxClient/cmake-build-debug/CMakeFiles/LinuxClient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LinuxClient.dir/depend

