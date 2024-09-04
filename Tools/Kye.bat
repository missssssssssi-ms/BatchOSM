@echo off
echo Kye.bat By MS V.2.0
echo ƒvƒƒ_ƒNƒgƒL[‚Ì—á: "%random%.%random%.%random%.%random%"
set /p kye="ƒvƒƒ_ƒNƒgƒL[‚ð“ü—Í‚µ‚Ä‚­‚¾‚³‚¢:"
if "%kye%" == "%computername%" ( goto ERROR-002 )
if "%kye%" == "dev" ( goto ERROR-002 )
ECHO [36m[ TASK ][0m ƒL[‚ÌŠm”F’†
POWERSHELL exit
ECHO [31m[ ERROR ][0mƒL[:%kye%‚Í–³Œø‚Å‚·B
pause
exit
:er1
cls
echo pRoDuCt;:oK-%computername%\%username%>%userprofile%\documents\ms\OS\ROOT\SYSTEM.BACKUP.CORE.OS.BOS.ZIP.txt
cd %userprofile%\documents\ms\OS\ROOT
rename SYSTEM.BACKUP.CORE.OS.BOS.ZIP.txt SYSTEM.BACKUP.CORE.OS.BOS.ZIP.ZFSendToTarget
ECHO [36m[ TASK ][0m ƒvƒƒ_ƒNƒgƒL[‚ðƒCƒ“ƒXƒg[ƒ‹’†
POWERSHELL exit
ECHO [32m[  OK  ][0m ƒL[‚Í³í‚ÉƒCƒ“ƒXƒg[ƒ‹‚³‚ê‚Ü‚µ‚½BBatchOS‚ð‚¨Šy‚µ‚Ý‚­‚¾‚³‚¢B
pause
exit /b 0
:error-002
ECHO [36m[ TASK ][0m ƒL[‚ÌŠm”F’†
POWERSHELL exit

echo [31m[ ERROR ][0mƒL[:%kye%‚Í–³Œø‚Å‚·B
set /p ok="‘±s‚·‚é‚É‚Í‰½‚©ƒL[‚ð‰Ÿ‚µ‚Ä‚­‚¾‚³‚¢ . . . "
if %ok%==MSTOOL ( goto er1 )
exit