@echo off
echo ----------------------------------------
echo Poor Man's Unix watch  for windows
echo ---------------------------------------
setlocal enableextensions enabledelayedexpansion
set /a "x = 0"
set TOKEN=WATCH_%RANDOM%
set SLEEP=5
:while1
    if %x% leq 50000 (
        echo %x%
        set /a "x = x + 1"
	start "%TOKEN%" %*
	echo sleeping %SLEEP% secs ... 
	sleep %SLEEP%
	taskkill /fi "Windowtitle eq %USERNAME%: %TOKEN%" /im cmd.exe 
	:: if you ran it as admin
	taskkill /fi "Windowtitle eq Administrator: %TOKEN%" /im cmd.exe 
	set TOKEN=WATCH_%RANDOM%
        goto :while1
    )
endlocal
