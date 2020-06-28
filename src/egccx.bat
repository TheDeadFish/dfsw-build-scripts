@set EXM_TMP="%1"
@if not %EXM_TMP:x64=%==%EXM_TMP% (
	@SET CPU=x64
) else ( @SET CPU=x86
)
@call %~dp0\env_gcc\ccx_env.bat GCC_9.2
::@set CMAKE=%PROGRAMS%\progs\cmake-3.16.2-win64-x64\bin\cmake.exe -G "MinGW Makefiles"
@set CMAKE=%PROGRAMS%\progs\cmake-3.16.2-win64-x64\bin\cmake.exe -G Ninja
@set CMAKE2=%CMAKE% -DCMAKE_C_FLAGS="%CFLAGS2%" -DCMAKE_CXX_FLAGS="%CCFLAGS2%"
