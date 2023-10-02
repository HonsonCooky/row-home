# CMake

CMake is: "An open source, cross-platform family of tools designed to build, test and package software". To properly
understand the need for this tool, it's important to understand what problem it is solving. Reading through
`cpp-compiler.md` first will help understand the following.

The C++ ecosphere does not have a standardized tool for building programs into executables. Due to the ...

# Helpful Commands

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
