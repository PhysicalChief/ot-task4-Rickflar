# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\nikit\Desktop\test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\nikit\Desktop\test\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\test.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\test.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\test.dir\flags.make

CMakeFiles\test.dir\main.cpp.obj: CMakeFiles\test.dir\flags.make
CMakeFiles\test.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\nikit\Desktop\test\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~1\2017\PROFES~1\VC\Tools\MSVC\1415~1.267\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\test.dir\main.cpp.obj /FdCMakeFiles\test.dir\ /FS -c C:\Users\nikit\Desktop\test\main.cpp
<<

CMakeFiles\test.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~1\2017\PROFES~1\VC\Tools\MSVC\1415~1.267\bin\Hostx86\x86\cl.exe > CMakeFiles\test.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\nikit\Desktop\test\main.cpp
<<

CMakeFiles\test.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~1\2017\PROFES~1\VC\Tools\MSVC\1415~1.267\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\test.dir\main.cpp.s /c C:\Users\nikit\Desktop\test\main.cpp
<<

# Object files for target test
test_OBJECTS = \
"CMakeFiles\test.dir\main.cpp.obj"

# External object files for target test
test_EXTERNAL_OBJECTS =

test.exe: CMakeFiles\test.dir\main.cpp.obj
test.exe: CMakeFiles\test.dir\build.make
test.exe: CMakeFiles\test.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\nikit\Desktop\test\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test.exe"
	"C:\Program Files\JetBrains\CLion 2019.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\test.dir --manifests  -- C:\PROGRA~2\MICROS~1\2017\PROFES~1\VC\Tools\MSVC\1415~1.267\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\test.dir\objects1.rsp @<<
 /out:test.exe /implib:test.lib /pdb:C:\Users\nikit\Desktop\test\cmake-build-debug\test.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\test.dir\build: test.exe

.PHONY : CMakeFiles\test.dir\build

CMakeFiles\test.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\test.dir\cmake_clean.cmake
.PHONY : CMakeFiles\test.dir\clean

CMakeFiles\test.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\nikit\Desktop\test C:\Users\nikit\Desktop\test C:\Users\nikit\Desktop\test\cmake-build-debug C:\Users\nikit\Desktop\test\cmake-build-debug C:\Users\nikit\Desktop\test\cmake-build-debug\CMakeFiles\test.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\test.dir\depend
