# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/ts/software/clion-2022.2.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/ts/software/clion-2022.2.4/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ts/vscode/NoteBook/LANGUAGE/C++/C++_Concurrency_IN_ACTION/code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ts/vscode/NoteBook/LANGUAGE/C++/C++_Concurrency_IN_ACTION/code/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/code.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/code.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/code.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/code.dir/flags.make

CMakeFiles/code.dir/main.cpp.o: CMakeFiles/code.dir/flags.make
CMakeFiles/code.dir/main.cpp.o: ../main.cpp
CMakeFiles/code.dir/main.cpp.o: CMakeFiles/code.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ts/vscode/NoteBook/LANGUAGE/C++/C++_Concurrency_IN_ACTION/code/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/code.dir/main.cpp.o"
	/usr/local/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/code.dir/main.cpp.o -MF CMakeFiles/code.dir/main.cpp.o.d -o CMakeFiles/code.dir/main.cpp.o -c /home/ts/vscode/NoteBook/LANGUAGE/C++/C++_Concurrency_IN_ACTION/code/main.cpp

CMakeFiles/code.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/code.dir/main.cpp.i"
	/usr/local/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ts/vscode/NoteBook/LANGUAGE/C++/C++_Concurrency_IN_ACTION/code/main.cpp > CMakeFiles/code.dir/main.cpp.i

CMakeFiles/code.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/code.dir/main.cpp.s"
	/usr/local/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ts/vscode/NoteBook/LANGUAGE/C++/C++_Concurrency_IN_ACTION/code/main.cpp -o CMakeFiles/code.dir/main.cpp.s

# Object files for target code
code_OBJECTS = \
"CMakeFiles/code.dir/main.cpp.o"

# External object files for target code
code_EXTERNAL_OBJECTS =

code: CMakeFiles/code.dir/main.cpp.o
code: CMakeFiles/code.dir/build.make
code: CMakeFiles/code.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ts/vscode/NoteBook/LANGUAGE/C++/C++_Concurrency_IN_ACTION/code/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable code"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/code.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/code.dir/build: code
.PHONY : CMakeFiles/code.dir/build

CMakeFiles/code.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/code.dir/cmake_clean.cmake
.PHONY : CMakeFiles/code.dir/clean

CMakeFiles/code.dir/depend:
	cd /home/ts/vscode/NoteBook/LANGUAGE/C++/C++_Concurrency_IN_ACTION/code/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ts/vscode/NoteBook/LANGUAGE/C++/C++_Concurrency_IN_ACTION/code /home/ts/vscode/NoteBook/LANGUAGE/C++/C++_Concurrency_IN_ACTION/code /home/ts/vscode/NoteBook/LANGUAGE/C++/C++_Concurrency_IN_ACTION/code/cmake-build-debug /home/ts/vscode/NoteBook/LANGUAGE/C++/C++_Concurrency_IN_ACTION/code/cmake-build-debug /home/ts/vscode/NoteBook/LANGUAGE/C++/C++_Concurrency_IN_ACTION/code/cmake-build-debug/CMakeFiles/code.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/code.dir/depend

