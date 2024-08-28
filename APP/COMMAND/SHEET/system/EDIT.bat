
echo SHEET by MS [ Version 1.2.000.0 ]
echo Šù‚Éì¬‚µ‚½ƒtƒ@ƒCƒ‹–¼‚ð“ü—Í‚·‚é‚ÆA’Ç‰Á‚Å‚«‚Ü‚·B
set /p name="Sheet FileName :"
set file=%dr%\%name%.csv
echo [32m000^|    A    ^|    B    ^|    C    ^|    D    ^|    E    ^|    F    ^|    G    ^|    H    ^|    I    ^|    J    ^|    K    ^|^|
set num=000
:loop
set /a num=%num%+1
rem X,XX,XXX‚Ì”»’è
if  %NUM% leq 9 ( set /p data="[0m[32m00%num%|[7m" & goto write )
if  %num% leq 99 ( set /p data="[0m[32m0%num%|[7m" & goto write )
if  %num% leq 999 ( set /p data="[0m[32m%num%|[7m" & goto write )
:write
if /i "%data:|=,%" == ",,exit,," ( exit /b 0 )
echo %data:|=,%>>%file%
goto loop