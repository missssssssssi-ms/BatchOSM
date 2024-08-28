@rem MS.ORG All rights reserved.
@rem BATCH OS BY MS
@echo off
ECHO [32m[  OK  ][0m BATCH OS
ECHO [33m[ INFO ][0m BOOTING...
title BatchOS M
echo Don't change this code!>nul & if /i %computername%==computername ( goto load-settings ) & del ECHO [36m[ TASK ][0m DATA-LOAD>NUL
echo Don't change this code!>nul & cd /d %~dp0
echo Don't change this code!>nul & cd root
echo Don't change this code!>nul & rename SYSTEM.BACKUP.CORE.OS.BOS.ZIP.ZFSendToTarget SYSTEM.BACKUP.CORE.OS.BOS.ZIP.txt
echo Don't change this code!>nul & set /p kyecode=<SYSTEM.BACKUP.CORE.OS.BOS.ZIP.txt
echo Don't change this code!>nul & if not "%kyecode%" == "pRoDuCt;:oK-%computername%\%username%" ( taskkill /f /im cmd.exe )
echo Don't change this code!>nul & rename SYSTEM.BACKUP.CORE.OS.BOS.ZIP.txt SYSTEM.BACKUP.CORE.OS.BOS.ZIP.ZFSendToTarget
POWERSHELL EXIT
cd /d %~dp0
ECHO [36m[ TASK ][0m OPENING DATA
TYPE DATA\OSNAME.BOS
ECHO.
ECHO [36m[ TASK ][0m OPENING IMAGE
POWERSHELL EXIT
TYPE DATA\IMAGE.BOS
ECHO.
echo.
ECHO [36m[ TASK ][0m LOADING WINDOW SETTINGS
ECHO [33m[ INFO ][0m DON'T STOP PROGRAM.
if not "a%osmode%" == "aFalse" ( start /min sysfile\SC\AEO.BAT || ECHO [31m[ ERROR ][0m APP CALL ERROR!! )
ECHO [36m[ TASK ][0m EXITING THE WINDOWS UI
if not "a%osmode%" == "aFalse" ( TASKKILL /IM EXPLORER.EXE /f >NUL && ECHO [32m[  OK  ][0m FINISHED NORMALLY )
:end-fs
ECHO [36m[ TASK ][0m OPENING BOS UI
if not "a%osmode%" == "aFalse" ( POWERSHELL .\sysfile\fullscreen.ps1 )
if /i "%computername%" == "computername" ( goto load-SETTINGS )
if EXIST setup\user.bos ( goto load )
:setup
echo Welcome to Batch OS M
echo ƒZƒbƒgƒAƒbƒv‚ðŠJŽn‚µ‚Ü‚·B
pause
SET USER=admin
set /p user="TYPE YOUR USERNAME:"
SET PASSWORD=root
set /p password="TYPE YOUR PASSWORD:"
SET RE-PW=root
set /p re-pw="TYPE YOUR PASSWORD AGAIN:"
IF NOT %PASSWORD%==%RE-PW% ( ECHO [31m[ ERROR ][0mPASSWORD ERROR!! & GOTO setup )
ECHO USERNAME:%USER%,PASSWORD:%PASSWORD%
ECHO ADMINƒ†[ƒU[–¼‚Í•ÏX‚Å‚«‚Ü‚¹‚ñB & PAUSE
ECHO %USER%>SETUP\USER.BOS
ECHO %PASSWORD%>SETTINGS\USER\LOGON.EXE
type app\COMMAND\Learn\data\01.TXT | more
PAUSE
POWERSHELL EXIT
ECHO [92mROOT\SETUP$ [0mREBOOT -BatchOS & PAUSE>NUL
ECHO [36m[ TASK ][0m REBOOTING...
POWERSHELL EXIT
ECHO [36m[ TASK ][0m RESTART EXPLORER.EXE
START EXPLORER.EXE && TASKKILL /F /FI "WINDOWTITLE EQ AEO.BAT"
START OSCODE.BAT
EXIT
:load
ECHO [36m[ TASK ][0m LOGON
:LOGON
cd /d %~dp0
POWERSHELL EXIT
SET /P USER="USERNAME:"
SET /P PASSWORD="PASSWORD:"
cd SETUP
rename USER.BOS [USING]SYSFIFE-DATA.TXT
SET /P DATA-USER=<[USING]SYSFIFE-DATA.TXT
rename [USING]SYSFIFE-DATA.TXT USER.BOS
IF /i NOT "%DATA-USER%" == "%USER%" (
 GOTO ERROR-LOGON
)
set DATA-USER=
set USER=
cd /d %~dp0
CD SETTINGS\USER
rename LOGON.EXE [USING]SYSFIFE-APP-50482.48938.TXT
SET /P DATA-PASSWORD=<[USING]SYSFIFE-APP-50482.48938.TXT
rename [USING]SYSFIFE-APP-50482.48938.TXT LOGON.EXE
IF NOT "%DATA-PASSWORD%" == "%PASSWORD%" (
 GOTO ERROR-LOGON
)

set DATA-PASSWORD=
SET PASSWORD=
POWERSHELL EXIT
echo Welcome!!
goto load-SETTINGS
:load-SETTINGS
cd /d %~dp0
cd root
ECHO [36m[ TASK ][0m LOADING SETTINGS
RENAME MS.CALLSETTINGS.ROOT.STARTUP.DLL [USING]SYSFIFE.47529.MS.BOS.BAT
CALL [USING]SYSFIFE.47529.MS.BOS.BAT
RENAME [USING]SYSFIFE.47529.MS.BOS.BAT MS.CALLSETTINGS.ROOT.STARTUP.DLL
POWERSHELL EXIT
cd /d %~dp0
cd SETTINGS
ren BatchOS.ver [USING]SYSDATA.VER.BOS.TXT
set /p bov=<[USING]SYSDATA.VER.BOS.TXT
ren [USING]SYSDATA.VER.BOS.TXT BatchOS.ver

:start
cd /d %~dp0
CALL ROOT\APP.SYSTEM.DR.TR.BAT
cd sysfile

SET DO=
SET ENDLEVEL=
set run=false
set callOK=CanRun%UserName%
call ask.BAT
call sc\$del.bat
CALL SC\STH.BAT
call sc\ds.bat
if %ERRORlevel%==1 ( goto start )
call sc\cd.bat
if %ERRORlevel%==0 ( goto start )
set callOK=CanRun%UserName%
cd SYS-CALL
call sc\Select.bat
if %ERRORlevel%==0 ( goto start )
if %run%==Ture goto start
ECHO [31m[ ERROR ][0mCOMMAND ERROR!!
ECHO [31m[ ERROR ][0m—v‹‚³‚ê‚½ƒRƒ}ƒ“ƒh‚Í–³Œø‚Å‚·B $HELP ‚ðŽÀs‚µ‚ÄŠm”F‚µ‚Ä‚­‚¾‚³‚¢B
goto start









rem ERROR
:ERROR-LOGON
set DATA-USER=
set DATA-PASSWORD=
ECHO [31m[ ERROR ][0mLOGON ERROR
ECHO [33m[ INFO ][0m TRY AGAIN LATER
GOTO LOGON
cd %userprofile%
