ECHO MSMを利用するには、以下の機能が必要です。
ECHO  送信ユーザー名
ECHO  送信内容
ECHO  表示時間(任意)
ECHO  送信PC名(任意)
set /p MSM-USER="[92mMSM User : [0m"
set /p MSM="[92mMSM INDEX : [0m"
SET MSM-TIME=10
set /p MSM-TIME="[92mMSM TIME : [0m"
SET NET-PC=G%MSM-USER%
set /p NET-pc="[92mMSM PCName : [0m"
ECHO 続行すると、送信します。
PAUSE
CALL SEND.BAT