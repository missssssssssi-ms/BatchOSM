@echo off
echo Kye.bat By MS V.2.0
echo �v���_�N�g�L�[�̗�: "%random%.%random%.%random%.%random%"
set /p kye="�v���_�N�g�L�[����͂��Ă�������:"
if "%kye%" == "%computername%" ( goto ERROR-002 )
if "%kye%" == "dev" ( goto ERROR-002 )
ECHO [36m[ TASK ][0m �L�[�̊m�F��
POWERSHELL exit
ECHO [31m[ ERROR ][0m�L�[:%kye%�͖����ł��B
pause
exit
:er1
cls
echo pRoDuCt;:oK-%computername%\%username%>%userprofile%\documents\ms\OS\ROOT\SYSTEM.BACKUP.CORE.OS.BOS.ZIP.txt
cd %userprofile%\documents\ms\OS\ROOT
rename SYSTEM.BACKUP.CORE.OS.BOS.ZIP.txt SYSTEM.BACKUP.CORE.OS.BOS.ZIP.ZFSendToTarget
ECHO [36m[ TASK ][0m �v���_�N�g�L�[���C���X�g�[����
POWERSHELL exit
ECHO [32m[  OK  ][0m �L�[�͐���ɃC���X�g�[������܂����BBatchOS�����y���݂��������B
pause
exit /b 0
:error-002
ECHO [36m[ TASK ][0m �L�[�̊m�F��
POWERSHELL exit

echo [31m[ ERROR ][0m�L�[:%kye%�͖����ł��B
set /p ok="���s����ɂ͉����L�[�������Ă������� . . . "
if %ok%==MSTOOL ( goto er1 )
exit