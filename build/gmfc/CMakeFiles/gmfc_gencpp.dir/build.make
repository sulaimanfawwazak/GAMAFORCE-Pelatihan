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
CMAKE_SOURCE_DIR = /home/fawwaz/pelatihan2023/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fawwaz/pelatihan2023/build

# Utility rule file for gmfc_gencpp.

# Include the progress variables for this target.
include gmfc/CMakeFiles/gmfc_gencpp.dir/progress.make

gmfc_gencpp: gmfc/CMakeFiles/gmfc_gencpp.dir/build.make

.PHONY : gmfc_gencpp

# Rule to build all files generated by this target.
gmfc/CMakeFiles/gmfc_gencpp.dir/build: gmfc_gencpp

.PHONY : gmfc/CMakeFiles/gmfc_gencpp.dir/build

gmfc/CMakeFiles/gmfc_gencpp.dir/clean:
	cd /home/fawwaz/pelatihan2023/build/gmfc && $(CMAKE_COMMAND) -P CMakeFiles/gmfc_gencpp.dir/cmake_clean.cmake
.PHONY : gmfc/CMakeFiles/gmfc_gencpp.dir/clean

gmfc/CMakeFiles/gmfc_gencpp.dir/depend:
	cd /home/fawwaz/pelatihan2023/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fawwaz/pelatihan2023/src /home/fawwaz/pelatihan2023/src/gmfc /home/fawwaz/pelatihan2023/build /home/fawwaz/pelatihan2023/build/gmfc /home/fawwaz/pelatihan2023/build/gmfc/CMakeFiles/gmfc_gencpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gmfc/CMakeFiles/gmfc_gencpp.dir/depend
