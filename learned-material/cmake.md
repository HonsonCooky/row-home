# CMake

CMake is: "An open source, cross-platform family of tools designed to build, test and package software". What is
commonly abstracted away from developers in languages like C# and TypeScript, is the way in which source code becomes
machine code instructions.

_See `cpp-compilation.md` for more on how this works._

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
