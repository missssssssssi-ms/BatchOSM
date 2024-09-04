if /i "%cmd:~6,5%" == "-edit" ( cd system & call edit.bat & exit /b )
if /i "%cmd:~6,5%" == "-view" ( cd system & call view.bat & exit /b )
if /i "%cmd:~6,5%" == "-help" ( goto help )
ECHO [31m[ ERROR ][0mCOMMAND ERROR!!
ECHO [31m[ ERROR ][0mˆø”‚ª–³Œø‚Å‚·B
:help
type data\help.txt | more
exit /b