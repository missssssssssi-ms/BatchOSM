if /i "%cmd:~7,7%" == "-mstool" ( goto mstool )
if /i "%cmd:~7,8%" == "-batchos" ( goto batchos )
if /i "%cmd:~7,8%" == "-Windows" ( goto windows )
if /i "%cmd:~7,5%" == "-help" ( goto help )
ECHO [31m[ ERROR ][0mCOMMAND ERROR!!
ECHO [31m[ ERROR ][0mà¯êîÇ™ñ≥å¯Ç≈Ç∑ÅB
:help
type data\help\01.txt | more
exit /b 0
:mstool
type data\mst.txt
exit /b 0
:batchos
type data\bos.txt
exit /b 0
:windows
type data\win.txt
exit /b 0