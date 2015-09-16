@echo off
tasklist /V | findstr -ir \ossec-agent.exe
cd ..
grep.exe .  rids\*
tail.exe -3 ossec.log
