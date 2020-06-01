:: compiler flags
::@set OFLAGSS=-O2 -fno-align-functions -falign-jumps=1 -fno-align-labels -fno-align-loops -freorder-blocks-algorithm=simple -fno-devirtualize-speculatively 
@set OFLAGSS=-Os -fno-schedule-insns2
@set OFLAGS=-fdiagnostics-color=never -m32 -march=prescott -mtune=generic %OFLAGSS% -fomit-frame-pointer -fno-exceptions -fno-asynchronous-unwind-tables -Wno-narrowing -ffunction-sections -Wno-pointer-arith  -fno-strict-overflow -fno-builtin-strlen -Wno-multichar -fno-math-errno -g
@set OCCFLG=%OFLAGS% -fno-rtti -std=gnu++2a -Wno-invalid-offsetof -Wno-literal-suffix -Wno-pmf-conversions -fno-sized-deallocation -static-libgcc
@set PUSH_ARG=-mno-accumulate-outgoing-args  -mno-stack-arg-probe -mpreferred-stack-boundary=2
@set WFLAGS=-D__NO_MINGW_ANSI_STDIO -DUNICODE -D_UNICODE -DASSERT_NOWIDE -D_WIN32_WINNT=0x0502 -D_WIN32_IE=0x0603

:: combined compiler flags
@set CFLAGS=%OFLAGS% %WFLAGS%
@set CCFLAGS=%OCCFLG% %WFLAGS%
@set CFLAGS2=%CFLAGS% %PUSH_ARG%
@set CCFLAGS2=%CCFLAGS% %PUSH_ARG%

:: linker flags
@set LFLAGS=-s -Wl,-gc-sections
