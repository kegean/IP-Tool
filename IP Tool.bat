@echo off

TITLE IP TOOL

:menu
cls
echo [1] Lookup
echo [2] Pinger
echo [3] exit

CHOICE /C 12 /N /M "Enter Choice"

IF ERRORLEVEL 2 GOTO Pinger
IF ERRORLEVEL 1 GOTO Lookup

:Lookup
cls
echo IP Lookup
set /p ip=Enter IP Address or Website 
curl -s "http://ip-api.com/%ip%"
pause
goto menu

:Pinger
cls
echo Pinger
set /p ip=Enter IP Address or Website
ping %ip%
pause
goto menu

pause