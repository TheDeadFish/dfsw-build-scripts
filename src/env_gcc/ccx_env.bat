@if "%EGCC_BAT%" == "YES" exit /b
@set EGCC_BAT=YES

:: compiler config
@call %~dp0\ccx_cfg.bat %1
@if %CPU%==x86 @call %~dp0\flags_x86.bat
@if %CPU%==x64 @call %~dp0\flags_x64.bat
@if %CPU%==x86 @set LIBX=lib32
@if %CPU%==x64 @set LIBX=lib64

:: library paths
@pushd %~dp0..\..
@set GCCDIR=%CD%\progs\%GCCDIR%
@path=%path%;%GCCDIR%\%GCCBIN%
@set prefix=%GCCDIR%\local
@set C_INCLUDE_PATH=%prefix%\include;%CD%\local\include
@set CPLUS_INCLUDE_PATH=%GCCDIR%\include;%prefix%\include;%CD%\local\include
@set LIBRARY_PATH=%prefix%\%LIBX%;%CD%\local\%LIBX%

:: specific libraries
@set NTNDK=%CD%\local\devel\ndk
@popd
