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
CMAKE_SOURCE_DIR = /home/ts/vscode/NoteBook/LANGUAGE/C++/OpenCV_4_Book

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ts/vscode/NoteBook/LANGUAGE/C++/OpenCV_4_Book/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/OpenCV_4_Book.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/OpenCV_4_Book.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenCV_4_Book.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenCV_4_Book.dir/flags.make

CMakeFiles/OpenCV_4_Book.dir/main.cpp.o: CMakeFiles/OpenCV_4_Book.dir/flags.make
CMakeFiles/OpenCV_4_Book.dir/main.cpp.o: ../main.cpp
CMakeFiles/OpenCV_4_Book.dir/main.cpp.o: CMakeFiles/OpenCV_4_Book.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ts/vscode/NoteBook/LANGUAGE/C++/OpenCV_4_Book/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OpenCV_4_Book.dir/main.cpp.o"
	/usr/local/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenCV_4_Book.dir/main.cpp.o -MF CMakeFiles/OpenCV_4_Book.dir/main.cpp.o.d -o CMakeFiles/OpenCV_4_Book.dir/main.cpp.o -c /home/ts/vscode/NoteBook/LANGUAGE/C++/OpenCV_4_Book/main.cpp

CMakeFiles/OpenCV_4_Book.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenCV_4_Book.dir/main.cpp.i"
	/usr/local/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ts/vscode/NoteBook/LANGUAGE/C++/OpenCV_4_Book/main.cpp > CMakeFiles/OpenCV_4_Book.dir/main.cpp.i

CMakeFiles/OpenCV_4_Book.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenCV_4_Book.dir/main.cpp.s"
	/usr/local/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ts/vscode/NoteBook/LANGUAGE/C++/OpenCV_4_Book/main.cpp -o CMakeFiles/OpenCV_4_Book.dir/main.cpp.s

# Object files for target OpenCV_4_Book
OpenCV_4_Book_OBJECTS = \
"CMakeFiles/OpenCV_4_Book.dir/main.cpp.o"

# External object files for target OpenCV_4_Book
OpenCV_4_Book_EXTERNAL_OBJECTS =

OpenCV_4_Book: CMakeFiles/OpenCV_4_Book.dir/main.cpp.o
OpenCV_4_Book: CMakeFiles/OpenCV_4_Book.dir/build.make
OpenCV_4_Book: CMakeFiles/OpenCV_4_Book.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ts/vscode/NoteBook/LANGUAGE/C++/OpenCV_4_Book/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable OpenCV_4_Book"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenCV_4_Book.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenCV_4_Book.dir/build: OpenCV_4_Book
.PHONY : CMakeFiles/OpenCV_4_Book.dir/build

CMakeFiles/OpenCV_4_Book.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OpenCV_4_Book.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OpenCV_4_Book.dir/clean

CMakeFiles/OpenCV_4_Book.dir/depend:
	cd /home/ts/vscode/NoteBook/LANGUAGE/C++/OpenCV_4_Book/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ts/vscode/NoteBook/LANGUAGE/C++/OpenCV_4_Book /home/ts/vscode/NoteBook/LANGUAGE/C++/OpenCV_4_Book /home/ts/vscode/NoteBook/LANGUAGE/C++/OpenCV_4_Book/cmake-build-debug /home/ts/vscode/NoteBook/LANGUAGE/C++/OpenCV_4_Book/cmake-build-debug /home/ts/vscode/NoteBook/LANGUAGE/C++/OpenCV_4_Book/cmake-build-debug/CMakeFiles/OpenCV_4_Book.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OpenCV_4_Book.dir/depend

