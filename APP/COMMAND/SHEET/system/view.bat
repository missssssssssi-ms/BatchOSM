set "file=%dr%\%cmd:~12%"
setlocal enabledelayedexpansion
set num=0
echo [32m[4m^|    A    ^|    B    ^|    C    ^|    D    ^|    E    ^|    F    ^|    G    ^|    H    ^|    I    ^|    J    ^|    K    ^|^|
set num=0
for /f "delims=" %%r in (%file%) do (
 set /a num=num+1
 set line=%%r
 if  %NUM% leq 9 ( echo ^|[7m!line:,=^|!
 ) else if  %num% leq 99 ( echo ^|[7m!line:,=^|!
 ) else if  %num% leq 999 ( echo ^|[7m!line:,=^|!)
)
pause
exit /b 0