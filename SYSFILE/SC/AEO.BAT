@REM ALWAYS EXPLORER OPENER
@ECHO off
title AEO.BAT
:start
set "windowTitle=BatchOS M"
tasklist /v | findstr /I /C:"%windowTitle%"
if "%ERRORLEVEL%"=="0" (
 cls
 timeout /t 60
 goto start
) else (
 :retry
 start EXPLORER || goto retry
 exit
)