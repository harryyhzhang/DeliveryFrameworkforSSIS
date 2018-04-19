@echo off

SET msbuild_exe=%WINDIR%\Microsoft.NET\Framework\v4.0.30319\msbuild.exe /m:1
SET buildFile=project.build

IF "%1"=="" GOTO Help
echo  %buildFile%
echo  %msbuild_exe% %buildFile% /t:%1
echo  %msbuild_exe% "%buildFile%" /t:%1
%msbuild_exe% %buildFile% /t:%1
GOTO End

:Help
echo .\go.bat localdb
:End
exit /b %errorlevel%