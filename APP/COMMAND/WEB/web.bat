if /i "%cmd:~4,5%" == "-open" ( goto open )
if /i "%cmd:~4,5%" == "-help" ( goto help )
if /i "%cmd:~4,4%" == "-del"  ( goto del )
ECHO [31m[ ERROR ][0mCOMMAND ERROR!!
ECHO [31m[ ERROR ][0mÉRÉ}ÉìÉhÇÃç\ï∂Ç™ä‘à·Ç¡ÇƒÇ¢Ç‹Ç∑ÅB
:help
type data\help.txt
exit /b 0
:open
cd SYSTEM
start msedge.exe
exit /b
:del
cd SYSTEM
rmdir /s /q msedge.exe.WebView2
exit /b