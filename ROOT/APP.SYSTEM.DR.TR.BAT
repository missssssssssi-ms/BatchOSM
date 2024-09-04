IF /I "%DR:~-1%" == " " ( SET DR=%DR:~0,-1%)
IF /I "%DR-SHOW:~-1%" == " " ( SET DR-SHOW=%DR-SHOW:~0,-1%)