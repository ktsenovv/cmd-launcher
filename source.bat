@echo off
rem [ SETTINGS ]==========================================================
set AppName=CMD Launcher
::set AppAuthor=kcenow
::set AppVersion=v1.0
::set AppWeb=https://kcenow.com
set AppNameNum=1
rem ======================================================================

rem [REGISTER]============================================================
for /f "tokens=%AppNameNum% delims=_" %%i in ("%~n0") do set ProgramName=%%i
title %AppName% [%ProgramName%.exe]
rem ======================================================================

rem [ FUNCTION ]==========================================================
:FUNC_CMD
set /p cmd="%ProgramName%>" 
%ProgramName% %cmd%
set "cmd="
echo.
goto FUNC_CMD
rem ======================================================================