if /i "%cmd:~6,3%" == "-pc" ( goto sd )
if /i "%cmd:~6,5%" == "-help" ( goto help )
:exit
cd SYSTEM
call end.bat
exit
:sd
cd SYSTEM
call sd.bat
exit
:help
echo BatchOS EXIT System [ Version %bov% ]
type data\help.
exit /b