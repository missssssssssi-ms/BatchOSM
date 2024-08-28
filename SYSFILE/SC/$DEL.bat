if /i "%cmd:~0,1%" == "$" ( set cmd=%cmd:~1% ) && exit /b 0
exit /b 1