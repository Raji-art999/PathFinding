# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/kellerrajashree/Desktop/Github_c++

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/kellerrajashree/Desktop/Github_c++/build

# Include any dependencies generated for this target.
include CMakeFiles/AStarProject.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/AStarProject.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/AStarProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AStarProject.dir/flags.make

CMakeFiles/AStarProject.dir/main.cpp.o: CMakeFiles/AStarProject.dir/flags.make
CMakeFiles/AStarProject.dir/main.cpp.o: /Users/kellerrajashree/Desktop/Github_c++/main.cpp
CMakeFiles/AStarProject.dir/main.cpp.o: CMakeFiles/AStarProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kellerrajashree/Desktop/Github_c++/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AStarProject.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AStarProject.dir/main.cpp.o -MF CMakeFiles/AStarProject.dir/main.cpp.o.d -o CMakeFiles/AStarProject.dir/main.cpp.o -c /Users/kellerrajashree/Desktop/Github_c++/main.cpp

CMakeFiles/AStarProject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AStarProject.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kellerrajashree/Desktop/Github_c++/main.cpp > CMakeFiles/AStarProject.dir/main.cpp.i

CMakeFiles/AStarProject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AStarProject.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kellerrajashree/Desktop/Github_c++/main.cpp -o CMakeFiles/AStarProject.dir/main.cpp.s

CMakeFiles/AStarProject.dir/a_star.cpp.o: CMakeFiles/AStarProject.dir/flags.make
CMakeFiles/AStarProject.dir/a_star.cpp.o: /Users/kellerrajashree/Desktop/Github_c++/a_star.cpp
CMakeFiles/AStarProject.dir/a_star.cpp.o: CMakeFiles/AStarProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/kellerrajashree/Desktop/Github_c++/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/AStarProject.dir/a_star.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AStarProject.dir/a_star.cpp.o -MF CMakeFiles/AStarProject.dir/a_star.cpp.o.d -o CMakeFiles/AStarProject.dir/a_star.cpp.o -c /Users/kellerrajashree/Desktop/Github_c++/a_star.cpp

CMakeFiles/AStarProject.dir/a_star.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/AStarProject.dir/a_star.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/kellerrajashree/Desktop/Github_c++/a_star.cpp > CMakeFiles/AStarProject.dir/a_star.cpp.i

CMakeFiles/AStarProject.dir/a_star.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/AStarProject.dir/a_star.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/kellerrajashree/Desktop/Github_c++/a_star.cpp -o CMakeFiles/AStarProject.dir/a_star.cpp.s

# Object files for target AStarProject
AStarProject_OBJECTS = \
"CMakeFiles/AStarProject.dir/main.cpp.o" \
"CMakeFiles/AStarProject.dir/a_star.cpp.o"

# External object files for target AStarProject
AStarProject_EXTERNAL_OBJECTS =

bin/AStarProject: CMakeFiles/AStarProject.dir/main.cpp.o
bin/AStarProject: CMakeFiles/AStarProject.dir/a_star.cpp.o
bin/AStarProject: CMakeFiles/AStarProject.dir/build.make
bin/AStarProject: CMakeFiles/AStarProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/kellerrajashree/Desktop/Github_c++/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable bin/AStarProject"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AStarProject.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AStarProject.dir/build: bin/AStarProject
.PHONY : CMakeFiles/AStarProject.dir/build

CMakeFiles/AStarProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AStarProject.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AStarProject.dir/clean

CMakeFiles/AStarProject.dir/depend:
	cd /Users/kellerrajashree/Desktop/Github_c++/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/kellerrajashree/Desktop/Github_c++ /Users/kellerrajashree/Desktop/Github_c++ /Users/kellerrajashree/Desktop/Github_c++/build /Users/kellerrajashree/Desktop/Github_c++/build /Users/kellerrajashree/Desktop/Github_c++/build/CMakeFiles/AStarProject.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/AStarProject.dir/depend

