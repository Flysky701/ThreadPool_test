# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\Development_Tool\Cmake\bin\cmake.exe

# The command to remove a file.
RM = D:\Development_Tool\Cmake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Project\ThreadPool

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Project\ThreadPool\build

# Include any dependencies generated for this target.
include CMakeFiles/thread_pool.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/thread_pool.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/thread_pool.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/thread_pool.dir/flags.make

CMakeFiles/thread_pool.dir/codegen:
.PHONY : CMakeFiles/thread_pool.dir/codegen

CMakeFiles/thread_pool.dir/src/main.cpp.obj: CMakeFiles/thread_pool.dir/flags.make
CMakeFiles/thread_pool.dir/src/main.cpp.obj: CMakeFiles/thread_pool.dir/includes_CXX.rsp
CMakeFiles/thread_pool.dir/src/main.cpp.obj: D:/Project/ThreadPool/src/main.cpp
CMakeFiles/thread_pool.dir/src/main.cpp.obj: CMakeFiles/thread_pool.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Project\ThreadPool\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/thread_pool.dir/src/main.cpp.obj"
	D:\development\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/thread_pool.dir/src/main.cpp.obj -MF CMakeFiles\thread_pool.dir\src\main.cpp.obj.d -o CMakeFiles\thread_pool.dir\src\main.cpp.obj -c D:\Project\ThreadPool\src\main.cpp

CMakeFiles/thread_pool.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/thread_pool.dir/src/main.cpp.i"
	D:\development\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Project\ThreadPool\src\main.cpp > CMakeFiles\thread_pool.dir\src\main.cpp.i

CMakeFiles/thread_pool.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/thread_pool.dir/src/main.cpp.s"
	D:\development\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Project\ThreadPool\src\main.cpp -o CMakeFiles\thread_pool.dir\src\main.cpp.s

# Object files for target thread_pool
thread_pool_OBJECTS = \
"CMakeFiles/thread_pool.dir/src/main.cpp.obj"

# External object files for target thread_pool
thread_pool_EXTERNAL_OBJECTS =

thread_pool.exe: CMakeFiles/thread_pool.dir/src/main.cpp.obj
thread_pool.exe: CMakeFiles/thread_pool.dir/build.make
thread_pool.exe: CMakeFiles/thread_pool.dir/linkLibs.rsp
thread_pool.exe: CMakeFiles/thread_pool.dir/objects1.rsp
thread_pool.exe: CMakeFiles/thread_pool.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:\Project\ThreadPool\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable thread_pool.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\thread_pool.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/thread_pool.dir/build: thread_pool.exe
.PHONY : CMakeFiles/thread_pool.dir/build

CMakeFiles/thread_pool.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\thread_pool.dir\cmake_clean.cmake
.PHONY : CMakeFiles/thread_pool.dir/clean

CMakeFiles/thread_pool.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Project\ThreadPool D:\Project\ThreadPool D:\Project\ThreadPool\build D:\Project\ThreadPool\build D:\Project\ThreadPool\build\CMakeFiles\thread_pool.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/thread_pool.dir/depend

