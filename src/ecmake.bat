@if "%1"=="x64" (
@call pathcat gcc.exe %PROGRAMS%/progs/mingw-9.2-x64/bin
) else (
@call pathcat gcc.exe %PROGRAMS%/progs/mingw-9.2-x86/bin
)
@call pathcat cmake.exe %PROGRAMS%/progs/cmake-3.18.2-win32-x86/bin
set CMAKE_GENERATOR=Ninja
