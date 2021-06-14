@set GCCBIN=bin
echo %1

@if %1==GCC_7.1 (
@if %CPU%==x86 (
	@set GCCDIR=mingw-x86-sjlj
)
@if %CPU%==x64 (
	@set GCCDIR=mingw-x64-seh
)
)

@if %1==GCC_8.1 (
	@set GCCDIR=mingw32-8.1-x86
@if %CPU%==x64 (
	@set GCCDIR=mingw-8.1-x64
)
)

@if %1==GCC_8.3 (
	@set GCCDIR=mingw-8.3
@if %CPU%==x64 (
	@set GCCBIN=bin64
)
)

@if %1==GCC_9.1 (
	@set GCCDIR=mingw-9.1-x86
@if %CPU%==x64 (
	@set GCCDIR=mingw-9.1-x64
)
)

@if %1==GCC_9.2 (
	@set GCCDIR=mingw-9.2-x86
@if %CPU%==x64 (
	@set GCCDIR=mingw-9.2-x64
)
)

@if %1==GCC_10.2 (
	@set GCCDIR=mingw-10.2-x86
@if %CPU%==x64 (
	@set GCCDIR=mingw-10.2-x64
)
)
