shutdown /s /t 10 /c "10秒後にPCをシャットダウンします。|この操作は、このユーザーによって実行されました。|"
timeout /t 9
shutdown /s /t 1 /c "シャットダウン１秒前です。|この操作は、このユーザーによるものです。|"
exit /b 1