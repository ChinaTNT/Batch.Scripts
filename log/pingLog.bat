COLOR 0A
echo "starting ping ..."
:top
set YYYYmmdd=%date:~0,4%%date:~5,2%%date:~8,2%
set "filename=ping_log%YYYYmmdd%.txt"
echo %date:~0,10%;%time%>>%filename%
REM ping -n 1 www.baidu.com | findstr "TTL" >> %filename%
ping -n 1 www.baidu.com | findstr "%%" >> %filename%
ping -n 2 1 >>NUL
goto top