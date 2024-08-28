set pcname=%computername%
set /p pcname="SDT PCNAME :"
pause
ŽÀs‚µ‚Ü‚·B
pause
timeout /t 5 /nobreak > nul
taskkill /f /s %pcname% /fi "pid ne 1"
IF /I %errorlevel%==0 ( ECHO [32m[  OK  ][0m FINISHED NORMALLY ) ELSE ( ECHO [31m[ ERROR ][0mSDT ERROR!! )