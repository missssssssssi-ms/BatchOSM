if "%cmd:~0,3%" == "---" ( goto LONG-memo )
if "%cmd:~0,2%" == "--" ( goto memo )
exit /b 0
:memo
echo.
exit /b 1
:long-memo
set /p tmp1="[92mBOS %dr-show% /// "
if not "%tmp1:~0,3%" == "///" ( goto long-memo )
echo. [0m
exit /b 1