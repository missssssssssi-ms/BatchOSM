                                      cd %app%
if /i "%cmd:~0,3%" == "msm"         ( cd %COMMAND-path%\MSM & call RUN.MSM.SYSTEM.bat & set run=Ture & exit /b )
if /i "%cmd:~0,4%" == "HELP"        ( cd %COMMAND-path%\HELP & call HELP-CALL.bat & set run=Ture & exit /b )
if /i "%cmd:~0,6%" == "SDTOOL"      ( cd %COMMAND-path%\SDTOOL & call boot.bat & set run=Ture & exit /b )
if /i "%cmd:~0,5%" == "sheet"       ( cd %COMMAND-path%\sheet & call boot.bat & set run=Ture & exit /b )
if /i "%cmd:~0,3%" == "cls"         ( cls & set run=Ture & exit /b 0 )
if /i "%cmd:~0,4%" == "exit"        ( cd OS\exit & call mode.bat & exit /b )
if /i "%cmd:~0,3%" == "web"         ( cd %COMMAND-path%\WEB & call WEB.bat & set run=Ture & exit /b )
if /i "%cmd:~0,6%" == "reboot"      ( call OS\reboot\reboot.bat & set run=Ture & exit /b )
if /i "%cmd:~0,10%" == "reboot -PC" ( shutdown /r /t 10 /c "10ïbå„Ç…PCÇçƒãNìÆÇµÇ‹Ç∑ÅB" )
if /i "%cmd:~0,2%" == "cl"          ( shutdown /a & set run=Ture & exit /b )
if /i "%cmd:~0,4%" == "file"        ( cd %COMMAND-path%\file & call boot.bat & exit /b )
exit /b 1