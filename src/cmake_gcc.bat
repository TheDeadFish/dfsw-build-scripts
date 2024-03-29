@setlocal
@call egccx.bat %1

:: select build directory
@if %CPU%==x64  ( SHIFT
 set BUILD_DIR=build64
) else (
 set BUILD_DIR=build32)
@if not exist %BUILD_DIR% mkdir %BUILD_DIR%
@pushd %BUILD_DIR%

:: select debug mode
@IF "%1"=="DEBUG" ( SHIFT
 SET BUILD_TYPE="Debug" && set MWINDOWS=
) else ( set LDFLAGS=%LFLAGS% && set MWINDOWS=-mwindows)

:: call user command
@IF "%1"=="CMD" ( SHIFT SHIFT
 @cmd /c %2
)

@set CFLAGS=%CFLAGS2%
@set CXXFLAGS=%CCFLAGS2%

@set DIR=%1
@IF "%DIR%"=="" set DIR=.

@%CMAKE%  ..\%DIR% -DCMAKE_BUILD_TYPE=%BUILD_TYPE%
::@mingw32-make
@ninja
@popd

:: return useful variables
@endlocal && set BUILD_DIR=%BUILD_DIR%&& set prefix=%prefix%&& set LIBX=%LIBX%&& set CPU=%CPU%
