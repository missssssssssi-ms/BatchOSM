IF /I "%CMD:~4,5%" == "-SEND"       ( SET DO=Ture & GOTO SEND )
IF /I "%cmd:~4,4%" == "-NEW"        ( SET DO=Ture & goto NEW )
IF /I "%CMD:~4,3%" == "-UR"         ( SET DO=Ture & SET BETA-APP1=Ture & GOTO USER )
IF /I "%CMD:~4,3%" == "-TE"         ( SET DO=Ture & SET BETA-APP1=Ture & GOTO TEMPLATE )
IF /I "%CMD:~4,3%" == "-USER"       ( SET DO=Ture & GOTO USER )
IF /I "%CMD:~4,3%" == "-TEMPLATE"   ( SET DO=Ture & GOTO TEMPLATE )
IF /I "%CMD:~4,2%" == "-S"          ( SET DO=Ture & GOTO SEND )
IF /I "%CMD:~4,5%" == "-HELP"       ( SET DO=Ture & set hs=Ture & GOTO HELP )
IF /I "%CMD:~4,10%" == "-HELP.SEND" ( SET DO=Ture & GOTO HELP.SEND )
IF DEFINED DO ( EXIT /B 0 )
ECHO [31m[ ERROR ][0mCOMMAND ERROR
ECHO [31m[ ERROR ][0m$%CMD% Ç…ÇÕóLå¯Ç»à¯êîÇ™Ç»Ç¢Ç©ÅAç\ï∂Ç™ä‘à·Ç¡ÇƒÇ¢Ç‹Ç∑ÅB
:HELP
cd data\help
REN 01.HELP [USING]HELP.MSM.DATA.01.TXT
TYPE [USING]HELP.MSM.DATA.01.TXT | more
REN [USING]HELP.MSM.DATA.01.TXT 01.HELP
if "%hs%" == "Ture" ( exit /b 0 )
exit /b 001
:SEND
call DATA\GETINFO.BAT
EXIT /b
:USER
CALL DATA\USER.BAT
EXIT /b
:TEMPLATE
CALL DATA\TEMPLATE.NBAT
EXIT /b
:NEW
CALL DATA\NEW.BAT
EXIT /b