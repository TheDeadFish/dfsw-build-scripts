:: compiler flags
@set OFLAGS=-mcmodel=small -fno-diagnostics-color -Os -Wno-narrowing -ffunction-sections -Wno-pointer-arith -fno-strict-overflow -fno-builtin-strlen -Wno-multichar -fno-math-errno -g
@set OCCFLG=%OFLAGS% -fno-rtti -std=gnu++2a -Wno-invalid-offsetof -Wno-literal-suffix -Wno-pmf-conversions -fno-sized-deallocation 
@set WFLAGS=-DUNICODE -D_UNICODE -D_WIN32_WINNT=0x0502 -D_WIN32_IE=0x0603
@set PUSH_ARG=

:: combined compiler flags
@set CFLAGS=%OFLAGS% %WFLAGS% -fno-exceptions
@set CCFLAGS=%OCCFLG% %WFLAGS% -fno-exceptions
@set CFLAGS2=%CFLAGS% %PUSH_ARG%
@set CCFLAGS2=%CCFLAGS% %PUSH_ARG%

:: linker flags
@set LFLAGS=-s -Wl,-gc-sections
