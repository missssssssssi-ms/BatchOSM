if /i "%cmd:~5,5%" == "-open" ( goto open )
if /i "%cmd:~5,5%" == "-show" ( goto show )
if /i "%cmd:~5,5%" == "-view" ( goto view )
if /i "%cmd:~5,5%" == "-help" ( goto help )
ECHO [31m[ ERROR ][0mCOMMAND ERROR!!
ECHO [31m[ ERROR ][0mÉRÉ}ÉìÉhÇÃç\ï∂Ç™ä‘à·Ç¡ÇƒÇ¢Ç‹Ç∑ÅB
:HELP
TYPE DATA\HELP.TXT
exit /b
:open
cd %dr%
start %cmd:~11%
exit /b
:show
cd %dr%
ren %cmd:~11% [USING].USERDATA.FILE.SHOW.BOS.TXT
echo %cmd:~11%
echo.
TYPE [USING].USERDATA.FILE.SHOW.BOS.TXT
echo.
ren [USING].USERDATA.FILE.SHOW.BOS.TXT %cmd:~11%
EXIT /b
:view
cd %dr%
dir
exit /b