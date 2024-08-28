if /i "%cmd:~0,2%" == "cd" ( goto cd-do )
exit /b 1

:cd-do
if /i "%cmd:~3,2%" == "B:" ( goto BOS-dr )
if /i "%cmd:~3,2%" == "c:" ( goto WIN-dr )

:NEXT-dr
if not "%dr:~-1%" == "\" ( set dr=%dr%\)
if not "%dr-show:~-1%" == "\" ( set dr-show=%dr-show%\)
if EXIST %dr%%cmd:~3% ( goto NEXT-dr-OK )
goto ERROR
:NEXT-dr-OK
set dr=%dr%%cmd:~3%
set dr-show=%dr-show%%cmd:~3%
goto dr-OK

:WIN-dr
set dr=%cmd:~3%
set dr-show=%dr%
set dr-bos=False
if EXIST %dr% ( goto dr-OK )
goto ERROR

:BOS-dr
if not "%dr:~-1%" == "\" ( set dr=%dr%\)
if not "%dr-show:~-1%" == "\" ( set dr-show=%dr-show%\)
set dr-bos=Ture
if EXIST %dr% ( goto dr-OK )
set dr=%ms-path%%cmd:~6%
set dr-show=%cmd:~3%
goto ERROR

:dr-OK
exit /b 0

:ERROR
ECHO [31m[ ERROR ][0mFOLDER PATH ERROR!!
ECHO [33m[ INFO ][0m éwíËÇ≥ÇÍÇΩÉpÉXÇ™å©Ç¬Ç©ÇËÇ‹ÇπÇÒÅB
exit /b 0





rem windows: c:\users\UserName\Desktop
rem BatchOS: B:\OS\User\OutPut
rem B:\ =c:\users\UserName\Documents\MS