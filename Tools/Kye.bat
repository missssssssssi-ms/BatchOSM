@echo off
echo Kye.bat By MS V.2.0
echo プロダクトキーの例: "%random%.%random%.%random%.%random%"
set /p kye="プロダクトキーを入力してください:"
if "%kye%" == "%computername%" ( goto ERROR-002 )
if "%kye%" == "dev" ( goto ERROR-002 )
ECHO [36m[ TASK ][0m キーの確認中
POWERSHELL exit
ECHO [31m[ ERROR ][0mキー:%kye%は無効です。
pause
exit
:er1
cls
echo pRoDuCt;:oK-%computername%\%username%>%userprofile%\documents\ms\OS\ROOT\SYSTEM.BACKUP.CORE.OS.BOS.ZIP.txt
cd %userprofile%\documents\ms\OS\ROOT
rename SYSTEM.BACKUP.CORE.OS.BOS.ZIP.txt SYSTEM.BACKUP.CORE.OS.BOS.ZIP.ZFSendToTarget
ECHO [36m[ TASK ][0m プロダクトキーをインストール中
POWERSHELL exit
ECHO [32m[  OK  ][0m キーは正常にインストールされました。BatchOSをお楽しみください。
pause
exit /b 0
:error-002
ECHO [36m[ TASK ][0m キーの確認中
POWERSHELL exit

echo [31m[ ERROR ][0mキー:%kye%は無効です。
set /p ok="続行するには何かキーを押してください . . . "
if %ok%==MSTOOL ( goto er1 )
exit