CD %DATA-USER%\MSM\USER
SET NAME=%CMD:~10%
IF NOT EXIST %NAME% ( GOTO ERROR )
CD %NAME%
SET /P MSM-USER=<USER.TXT
SET /P NET-PC=<PC.TXT
set /p MSM="[92mMSM INDEX : [0m"
set /p MSM-TIME="[92mMSM TIME : [0m"
ECHO 送信します。
PAUSE
CD %COMMAND%\MSM\DATA\
CALL SEND.BAT
exit /b 0
:ERROR
ECHO [31m[ ERROR ][0m指定されたテンプレートは存在しません。
PAUSE
exit /b 1
