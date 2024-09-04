set /p PCNAME="SDT PCNAME :"
SET MESSAGE=%COMPUTERNAME%‚É‚æ‚éƒVƒƒƒbƒgƒ_ƒEƒ“
SET /P MESSAGE="SDT MESSAGE :"
SET SD-TIME=10
set /p sd-time="SDT TIME :"
shutdown /f /s /t %sd-time% /m %PCNAME% /c "%MESSAGE%"
if /i %sd-time% geq 5 ( goto OK )
ECHO [31m[ ERROR ][0mNUMBER ERROR!!
exit /B
:OK
IF /I %errorlevel%==0 ( ECHO [32m[  OK  ][0m FINISHED NORMALLY ) ELSE ( ECHO [31m[ ERROR ][0mSDTERROR!! )