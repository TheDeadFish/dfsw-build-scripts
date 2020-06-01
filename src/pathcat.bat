@WHERE /Q %1
@if %ERRORLEVEL%==1 ( 
	set PATH=%PATH%;%2
)

