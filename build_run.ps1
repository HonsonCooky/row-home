Write-Host @"
----------------------------------------------------------------------------------------------------------------------
BUILD
----------------------------------------------------------------------------------------------------------------------


"@
cmake -S . -B .\out\build\; 
msbuild .\out\build\RowHome.sln; 


Write-Host @"


----------------------------------------------------------------------------------------------------------------------
RUN
----------------------------------------------------------------------------------------------------------------------


"@
.\out\build\Debug\RowHome.exe;
