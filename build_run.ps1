Write-Host @"
----------------------------------------------------------------------------------------------------------------------
BUILDING
----------------------------------------------------------------------------------------------------------------------
"@
cmake -S . -B .\out\build\; 
msbuild .\out\build\rowhome.sln; 

Write-Host @"
----------------------------------------------------------------------------------------------------------------------
RUNNING
----------------------------------------------------------------------------------------------------------------------
"@
.\out\build\Debug\rowhome.exe;
