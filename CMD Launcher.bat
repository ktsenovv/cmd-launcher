@echo off
rem [ SETTINGS ]==========================================================
set AppName=CMD Launcher
::set AppAuthor=Kristian Tsenov
::set AppVersion=v2025.04.06
::set AppWeb=ktsenov.com
rem ======================================================================

rem [REGISTER]============================================================
:: Check if application exist, else use it as cmd.exe
for /f "tokens=1 delims=_" %%i in ("%~n0") do set ProgramName=%%i
if "%AppName%" == "%ProgramName%" (title %AppName% & cmd)

title %AppName% [%ProgramName%.exe]
rem ======================================================================

rem [ MAIN ]==============================================================
:repeat
:: User input command
set /p Input="%ProgramName%>"

:: Clear commands
if "%Input%" == "cls" (cls & goto reset)
if "%Input%" == "clear" (cls & goto reset)
if "%Input%" == "clean" (cls & goto reset)

:: Execute inputed command
%ProgramName% %Input%

:reset
:: Reset input
set "Input="

:: Repeat
goto repeat
rem ======================================================================