@if "%1"=="x64" (
@call pathcat gcc.exe %PROGRAMS%/progs/mingw-9.2-x64/bin
) else (
@call pathcat gcc.exe %PROGRAMS%/progs/mingw-9.2-x86/bin
)
@call pathcat cmake.exe %PROGRAMS%/progs/cmake-3.16.2-win64-x64/bin
set CMAKE_GENERATOR=Ninja
