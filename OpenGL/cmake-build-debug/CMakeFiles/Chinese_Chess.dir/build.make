# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /home/hao/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/172.1572.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/hao/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/172.1572.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Chinese_Chess.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Chinese_Chess.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Chinese_Chess.dir/flags.make

CMakeFiles/Chinese_Chess.dir/main.cpp.o: CMakeFiles/Chinese_Chess.dir/flags.make
CMakeFiles/Chinese_Chess.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Chinese_Chess.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chinese_Chess.dir/main.cpp.o -c "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/main.cpp"

CMakeFiles/Chinese_Chess.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chinese_Chess.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/main.cpp" > CMakeFiles/Chinese_Chess.dir/main.cpp.i

CMakeFiles/Chinese_Chess.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chinese_Chess.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/main.cpp" -o CMakeFiles/Chinese_Chess.dir/main.cpp.s

CMakeFiles/Chinese_Chess.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/Chinese_Chess.dir/main.cpp.o.requires

CMakeFiles/Chinese_Chess.dir/main.cpp.o.provides: CMakeFiles/Chinese_Chess.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Chinese_Chess.dir/build.make CMakeFiles/Chinese_Chess.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/Chinese_Chess.dir/main.cpp.o.provides

CMakeFiles/Chinese_Chess.dir/main.cpp.o.provides.build: CMakeFiles/Chinese_Chess.dir/main.cpp.o


CMakeFiles/Chinese_Chess.dir/Shader.cpp.o: CMakeFiles/Chinese_Chess.dir/flags.make
CMakeFiles/Chinese_Chess.dir/Shader.cpp.o: ../Shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Chinese_Chess.dir/Shader.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chinese_Chess.dir/Shader.cpp.o -c "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Shader.cpp"

CMakeFiles/Chinese_Chess.dir/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chinese_Chess.dir/Shader.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Shader.cpp" > CMakeFiles/Chinese_Chess.dir/Shader.cpp.i

CMakeFiles/Chinese_Chess.dir/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chinese_Chess.dir/Shader.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Shader.cpp" -o CMakeFiles/Chinese_Chess.dir/Shader.cpp.s

CMakeFiles/Chinese_Chess.dir/Shader.cpp.o.requires:

.PHONY : CMakeFiles/Chinese_Chess.dir/Shader.cpp.o.requires

CMakeFiles/Chinese_Chess.dir/Shader.cpp.o.provides: CMakeFiles/Chinese_Chess.dir/Shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/Chinese_Chess.dir/build.make CMakeFiles/Chinese_Chess.dir/Shader.cpp.o.provides.build
.PHONY : CMakeFiles/Chinese_Chess.dir/Shader.cpp.o.provides

CMakeFiles/Chinese_Chess.dir/Shader.cpp.o.provides.build: CMakeFiles/Chinese_Chess.dir/Shader.cpp.o


CMakeFiles/Chinese_Chess.dir/Camera.cpp.o: CMakeFiles/Chinese_Chess.dir/flags.make
CMakeFiles/Chinese_Chess.dir/Camera.cpp.o: ../Camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Chinese_Chess.dir/Camera.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chinese_Chess.dir/Camera.cpp.o -c "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Camera.cpp"

CMakeFiles/Chinese_Chess.dir/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chinese_Chess.dir/Camera.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Camera.cpp" > CMakeFiles/Chinese_Chess.dir/Camera.cpp.i

CMakeFiles/Chinese_Chess.dir/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chinese_Chess.dir/Camera.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Camera.cpp" -o CMakeFiles/Chinese_Chess.dir/Camera.cpp.s

CMakeFiles/Chinese_Chess.dir/Camera.cpp.o.requires:

.PHONY : CMakeFiles/Chinese_Chess.dir/Camera.cpp.o.requires

CMakeFiles/Chinese_Chess.dir/Camera.cpp.o.provides: CMakeFiles/Chinese_Chess.dir/Camera.cpp.o.requires
	$(MAKE) -f CMakeFiles/Chinese_Chess.dir/build.make CMakeFiles/Chinese_Chess.dir/Camera.cpp.o.provides.build
.PHONY : CMakeFiles/Chinese_Chess.dir/Camera.cpp.o.provides

CMakeFiles/Chinese_Chess.dir/Camera.cpp.o.provides.build: CMakeFiles/Chinese_Chess.dir/Camera.cpp.o


CMakeFiles/Chinese_Chess.dir/Model.cpp.o: CMakeFiles/Chinese_Chess.dir/flags.make
CMakeFiles/Chinese_Chess.dir/Model.cpp.o: ../Model.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Chinese_Chess.dir/Model.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chinese_Chess.dir/Model.cpp.o -c "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Model.cpp"

CMakeFiles/Chinese_Chess.dir/Model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chinese_Chess.dir/Model.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Model.cpp" > CMakeFiles/Chinese_Chess.dir/Model.cpp.i

CMakeFiles/Chinese_Chess.dir/Model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chinese_Chess.dir/Model.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Model.cpp" -o CMakeFiles/Chinese_Chess.dir/Model.cpp.s

CMakeFiles/Chinese_Chess.dir/Model.cpp.o.requires:

.PHONY : CMakeFiles/Chinese_Chess.dir/Model.cpp.o.requires

CMakeFiles/Chinese_Chess.dir/Model.cpp.o.provides: CMakeFiles/Chinese_Chess.dir/Model.cpp.o.requires
	$(MAKE) -f CMakeFiles/Chinese_Chess.dir/build.make CMakeFiles/Chinese_Chess.dir/Model.cpp.o.provides.build
.PHONY : CMakeFiles/Chinese_Chess.dir/Model.cpp.o.provides

CMakeFiles/Chinese_Chess.dir/Model.cpp.o.provides.build: CMakeFiles/Chinese_Chess.dir/Model.cpp.o


CMakeFiles/Chinese_Chess.dir/Callback.cpp.o: CMakeFiles/Chinese_Chess.dir/flags.make
CMakeFiles/Chinese_Chess.dir/Callback.cpp.o: ../Callback.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Chinese_Chess.dir/Callback.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chinese_Chess.dir/Callback.cpp.o -c "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Callback.cpp"

CMakeFiles/Chinese_Chess.dir/Callback.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chinese_Chess.dir/Callback.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Callback.cpp" > CMakeFiles/Chinese_Chess.dir/Callback.cpp.i

CMakeFiles/Chinese_Chess.dir/Callback.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chinese_Chess.dir/Callback.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Callback.cpp" -o CMakeFiles/Chinese_Chess.dir/Callback.cpp.s

CMakeFiles/Chinese_Chess.dir/Callback.cpp.o.requires:

.PHONY : CMakeFiles/Chinese_Chess.dir/Callback.cpp.o.requires

CMakeFiles/Chinese_Chess.dir/Callback.cpp.o.provides: CMakeFiles/Chinese_Chess.dir/Callback.cpp.o.requires
	$(MAKE) -f CMakeFiles/Chinese_Chess.dir/build.make CMakeFiles/Chinese_Chess.dir/Callback.cpp.o.provides.build
.PHONY : CMakeFiles/Chinese_Chess.dir/Callback.cpp.o.provides

CMakeFiles/Chinese_Chess.dir/Callback.cpp.o.provides.build: CMakeFiles/Chinese_Chess.dir/Callback.cpp.o


CMakeFiles/Chinese_Chess.dir/Defination.cpp.o: CMakeFiles/Chinese_Chess.dir/flags.make
CMakeFiles/Chinese_Chess.dir/Defination.cpp.o: ../Defination.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Chinese_Chess.dir/Defination.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chinese_Chess.dir/Defination.cpp.o -c "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Defination.cpp"

CMakeFiles/Chinese_Chess.dir/Defination.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chinese_Chess.dir/Defination.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Defination.cpp" > CMakeFiles/Chinese_Chess.dir/Defination.cpp.i

CMakeFiles/Chinese_Chess.dir/Defination.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chinese_Chess.dir/Defination.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Defination.cpp" -o CMakeFiles/Chinese_Chess.dir/Defination.cpp.s

CMakeFiles/Chinese_Chess.dir/Defination.cpp.o.requires:

.PHONY : CMakeFiles/Chinese_Chess.dir/Defination.cpp.o.requires

CMakeFiles/Chinese_Chess.dir/Defination.cpp.o.provides: CMakeFiles/Chinese_Chess.dir/Defination.cpp.o.requires
	$(MAKE) -f CMakeFiles/Chinese_Chess.dir/build.make CMakeFiles/Chinese_Chess.dir/Defination.cpp.o.provides.build
.PHONY : CMakeFiles/Chinese_Chess.dir/Defination.cpp.o.provides

CMakeFiles/Chinese_Chess.dir/Defination.cpp.o.provides.build: CMakeFiles/Chinese_Chess.dir/Defination.cpp.o


CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o: CMakeFiles/Chinese_Chess.dir/flags.make
CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o: ../auxiliary.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o -c "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/auxiliary.cpp"

CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/auxiliary.cpp" > CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.i

CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/auxiliary.cpp" -o CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.s

CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o.requires:

.PHONY : CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o.requires

CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o.provides: CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o.requires
	$(MAKE) -f CMakeFiles/Chinese_Chess.dir/build.make CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o.provides.build
.PHONY : CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o.provides

CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o.provides.build: CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o


CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o: CMakeFiles/Chinese_Chess.dir/flags.make
CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o: ../Mesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o -c "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Mesh.cpp"

CMakeFiles/Chinese_Chess.dir/Mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chinese_Chess.dir/Mesh.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Mesh.cpp" > CMakeFiles/Chinese_Chess.dir/Mesh.cpp.i

CMakeFiles/Chinese_Chess.dir/Mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chinese_Chess.dir/Mesh.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Mesh.cpp" -o CMakeFiles/Chinese_Chess.dir/Mesh.cpp.s

CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o.requires:

.PHONY : CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o.requires

CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o.provides: CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o.requires
	$(MAKE) -f CMakeFiles/Chinese_Chess.dir/build.make CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o.provides.build
.PHONY : CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o.provides

CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o.provides.build: CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o


CMakeFiles/Chinese_Chess.dir/Object.cpp.o: CMakeFiles/Chinese_Chess.dir/flags.make
CMakeFiles/Chinese_Chess.dir/Object.cpp.o: ../Object.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Chinese_Chess.dir/Object.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chinese_Chess.dir/Object.cpp.o -c "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Object.cpp"

CMakeFiles/Chinese_Chess.dir/Object.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chinese_Chess.dir/Object.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Object.cpp" > CMakeFiles/Chinese_Chess.dir/Object.cpp.i

CMakeFiles/Chinese_Chess.dir/Object.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chinese_Chess.dir/Object.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Object.cpp" -o CMakeFiles/Chinese_Chess.dir/Object.cpp.s

CMakeFiles/Chinese_Chess.dir/Object.cpp.o.requires:

.PHONY : CMakeFiles/Chinese_Chess.dir/Object.cpp.o.requires

CMakeFiles/Chinese_Chess.dir/Object.cpp.o.provides: CMakeFiles/Chinese_Chess.dir/Object.cpp.o.requires
	$(MAKE) -f CMakeFiles/Chinese_Chess.dir/build.make CMakeFiles/Chinese_Chess.dir/Object.cpp.o.provides.build
.PHONY : CMakeFiles/Chinese_Chess.dir/Object.cpp.o.provides

CMakeFiles/Chinese_Chess.dir/Object.cpp.o.provides.build: CMakeFiles/Chinese_Chess.dir/Object.cpp.o


CMakeFiles/Chinese_Chess.dir/Light.cpp.o: CMakeFiles/Chinese_Chess.dir/flags.make
CMakeFiles/Chinese_Chess.dir/Light.cpp.o: ../Light.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Chinese_Chess.dir/Light.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chinese_Chess.dir/Light.cpp.o -c "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Light.cpp"

CMakeFiles/Chinese_Chess.dir/Light.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chinese_Chess.dir/Light.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Light.cpp" > CMakeFiles/Chinese_Chess.dir/Light.cpp.i

CMakeFiles/Chinese_Chess.dir/Light.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chinese_Chess.dir/Light.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Light.cpp" -o CMakeFiles/Chinese_Chess.dir/Light.cpp.s

CMakeFiles/Chinese_Chess.dir/Light.cpp.o.requires:

.PHONY : CMakeFiles/Chinese_Chess.dir/Light.cpp.o.requires

CMakeFiles/Chinese_Chess.dir/Light.cpp.o.provides: CMakeFiles/Chinese_Chess.dir/Light.cpp.o.requires
	$(MAKE) -f CMakeFiles/Chinese_Chess.dir/build.make CMakeFiles/Chinese_Chess.dir/Light.cpp.o.provides.build
.PHONY : CMakeFiles/Chinese_Chess.dir/Light.cpp.o.provides

CMakeFiles/Chinese_Chess.dir/Light.cpp.o.provides.build: CMakeFiles/Chinese_Chess.dir/Light.cpp.o


CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o: CMakeFiles/Chinese_Chess.dir/flags.make
CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o: ../ChessBoard.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o -c "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/ChessBoard.cpp"

CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/ChessBoard.cpp" > CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.i

CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/ChessBoard.cpp" -o CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.s

CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o.requires:

.PHONY : CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o.requires

CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o.provides: CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o.requires
	$(MAKE) -f CMakeFiles/Chinese_Chess.dir/build.make CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o.provides.build
.PHONY : CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o.provides

CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o.provides.build: CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o


CMakeFiles/Chinese_Chess.dir/Chess.cpp.o: CMakeFiles/Chinese_Chess.dir/flags.make
CMakeFiles/Chinese_Chess.dir/Chess.cpp.o: ../Chess.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Chinese_Chess.dir/Chess.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Chinese_Chess.dir/Chess.cpp.o -c "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Chess.cpp"

CMakeFiles/Chinese_Chess.dir/Chess.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Chinese_Chess.dir/Chess.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Chess.cpp" > CMakeFiles/Chinese_Chess.dir/Chess.cpp.i

CMakeFiles/Chinese_Chess.dir/Chess.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Chinese_Chess.dir/Chess.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/Chess.cpp" -o CMakeFiles/Chinese_Chess.dir/Chess.cpp.s

CMakeFiles/Chinese_Chess.dir/Chess.cpp.o.requires:

.PHONY : CMakeFiles/Chinese_Chess.dir/Chess.cpp.o.requires

CMakeFiles/Chinese_Chess.dir/Chess.cpp.o.provides: CMakeFiles/Chinese_Chess.dir/Chess.cpp.o.requires
	$(MAKE) -f CMakeFiles/Chinese_Chess.dir/build.make CMakeFiles/Chinese_Chess.dir/Chess.cpp.o.provides.build
.PHONY : CMakeFiles/Chinese_Chess.dir/Chess.cpp.o.provides

CMakeFiles/Chinese_Chess.dir/Chess.cpp.o.provides.build: CMakeFiles/Chinese_Chess.dir/Chess.cpp.o


# Object files for target Chinese_Chess
Chinese_Chess_OBJECTS = \
"CMakeFiles/Chinese_Chess.dir/main.cpp.o" \
"CMakeFiles/Chinese_Chess.dir/Shader.cpp.o" \
"CMakeFiles/Chinese_Chess.dir/Camera.cpp.o" \
"CMakeFiles/Chinese_Chess.dir/Model.cpp.o" \
"CMakeFiles/Chinese_Chess.dir/Callback.cpp.o" \
"CMakeFiles/Chinese_Chess.dir/Defination.cpp.o" \
"CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o" \
"CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o" \
"CMakeFiles/Chinese_Chess.dir/Object.cpp.o" \
"CMakeFiles/Chinese_Chess.dir/Light.cpp.o" \
"CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o" \
"CMakeFiles/Chinese_Chess.dir/Chess.cpp.o"

# External object files for target Chinese_Chess
Chinese_Chess_EXTERNAL_OBJECTS =

Chinese_Chess: CMakeFiles/Chinese_Chess.dir/main.cpp.o
Chinese_Chess: CMakeFiles/Chinese_Chess.dir/Shader.cpp.o
Chinese_Chess: CMakeFiles/Chinese_Chess.dir/Camera.cpp.o
Chinese_Chess: CMakeFiles/Chinese_Chess.dir/Model.cpp.o
Chinese_Chess: CMakeFiles/Chinese_Chess.dir/Callback.cpp.o
Chinese_Chess: CMakeFiles/Chinese_Chess.dir/Defination.cpp.o
Chinese_Chess: CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o
Chinese_Chess: CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o
Chinese_Chess: CMakeFiles/Chinese_Chess.dir/Object.cpp.o
Chinese_Chess: CMakeFiles/Chinese_Chess.dir/Light.cpp.o
Chinese_Chess: CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o
Chinese_Chess: CMakeFiles/Chinese_Chess.dir/Chess.cpp.o
Chinese_Chess: CMakeFiles/Chinese_Chess.dir/build.make
Chinese_Chess: CMakeFiles/Chinese_Chess.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable Chinese_Chess"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Chinese_Chess.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Chinese_Chess.dir/build: Chinese_Chess

.PHONY : CMakeFiles/Chinese_Chess.dir/build

CMakeFiles/Chinese_Chess.dir/requires: CMakeFiles/Chinese_Chess.dir/main.cpp.o.requires
CMakeFiles/Chinese_Chess.dir/requires: CMakeFiles/Chinese_Chess.dir/Shader.cpp.o.requires
CMakeFiles/Chinese_Chess.dir/requires: CMakeFiles/Chinese_Chess.dir/Camera.cpp.o.requires
CMakeFiles/Chinese_Chess.dir/requires: CMakeFiles/Chinese_Chess.dir/Model.cpp.o.requires
CMakeFiles/Chinese_Chess.dir/requires: CMakeFiles/Chinese_Chess.dir/Callback.cpp.o.requires
CMakeFiles/Chinese_Chess.dir/requires: CMakeFiles/Chinese_Chess.dir/Defination.cpp.o.requires
CMakeFiles/Chinese_Chess.dir/requires: CMakeFiles/Chinese_Chess.dir/auxiliary.cpp.o.requires
CMakeFiles/Chinese_Chess.dir/requires: CMakeFiles/Chinese_Chess.dir/Mesh.cpp.o.requires
CMakeFiles/Chinese_Chess.dir/requires: CMakeFiles/Chinese_Chess.dir/Object.cpp.o.requires
CMakeFiles/Chinese_Chess.dir/requires: CMakeFiles/Chinese_Chess.dir/Light.cpp.o.requires
CMakeFiles/Chinese_Chess.dir/requires: CMakeFiles/Chinese_Chess.dir/ChessBoard.cpp.o.requires
CMakeFiles/Chinese_Chess.dir/requires: CMakeFiles/Chinese_Chess.dir/Chess.cpp.o.requires

.PHONY : CMakeFiles/Chinese_Chess.dir/requires

CMakeFiles/Chinese_Chess.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Chinese_Chess.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Chinese_Chess.dir/clean

CMakeFiles/Chinese_Chess.dir/depend:
	cd "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess" "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess" "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug" "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug" "/home/hao/Documents/Code/C/CLionProjects/Chinese Chess/cmake-build-debug/CMakeFiles/Chinese_Chess.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Chinese_Chess.dir/depend

