# CMake

Contents of this file will primarily be important snippets from
[this book](https://cmake.org/cmake/help/book/mastering-cmake/index.html). Reading this yourself is the best thing you
could probably do.

CMake is a build-system generator for software projects; Allowing developers to specify build parameters in a portable
format. Cross-platform builds, system introspection (figuring out the hardware capablilities and specs), and custom
builds are simplified with this tool.

_Note_: CMake is probably an unnecessary tool for embeded systems programming (where the hardware won't change).

CMake will generate projects files for native build tools: Visual Studio, XCode, Unix, etc.

## Top Level CMake File

CMake instructions are stored in a file called `CMakeLists`. There can exist multiple of these, but for now we will talk
about the 'top-level' or 'first-to-execute' file.

The top-level file MUST start with:

```cmake
cmake_minimum_required(VERSION X.XX)		# Backwards Compatibility
project(Project_Name)				# Project Name
add_executable(${PROJECT_NAME} src/main.cpp)	# Base Source File
```

## Modularizaton

Modularization || mono-repo setups would likely take advantage of multiple build systems. In CMake, each root module
folder must have a `CMakeLists` file. The 'top-level' `CMakeLists` file, can then use the 'add_subdirectory' command
(seen below) to build this module as part of it's process.

```cmake
add_subdirectory(source_dir [binary_dir] [EXCLUDE_FROM_ALL] [SYSTEM])
```

- `source_dir`: Where the source folder is located
- `binary_dir`: Where to store the build
- `EXCLUDE_FROM_ALL`: If provided, will not be included in the `ALL` target for the parent dir. Forcing it to be built
  on it's own (which makes sense for directories that are not a part of the main build).
- `SYSTEM`: If true, will be treated as 'system include' directories when compiling.

# Commands

**_BUILD && EXECUTE | WINDOWS_**

- Install Visual Studio (or the 'msbuild' tool);
- Setup environment path to `C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin`

```pwsh
# Build the build-system (Visual Studio Solution)
cmake -S . -B .\out\build\

# Build executable
msbuild .\out\build\RowHome.sln

# Run program
.\out\build\Debug\RowHome.exe
```

_I've build a handy powershell (`build_run.ps1`) script to rebuild and run this project._
