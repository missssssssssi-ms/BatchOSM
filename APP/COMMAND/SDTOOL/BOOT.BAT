ECHO ShutDownTool By MS [Version 5.00.0]
echo Powered by SDT
echo (c) MS Organization. All Rights Reserved.
if /i "%cmd:~7,3%" == "-sd"   ( goto sd   )
if /i "%cmd:~7,3%" == "-bs"   ( goto bs   )
if /i "%cmd:~7,2%" == "-s"    ( goto sd   )
if /i "%cmd:~7,5%" == "-help" ( goto help )
ECHO [31m[ ERROR ][0mCOMMAND ERROR!!
ECHO [31m[ ERROR ][0mÉRÉ}ÉìÉhÇÃç\ï∂Ç™ä‘à·Ç¡ÇƒÇ¢Ç‹Ç∑ÅB
:HELP
type data\help.TXT
exit /b 0
:sd
call data/sd.bat
exit /b 0
:bs
call data/bs.bat
exit /b 0