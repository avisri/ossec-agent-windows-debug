@echo off
cd ..
echo "----------------------Server Info ------------------------"
grep.exe Using ossec.log | tail.exe -1
echo . 
echo "----------------------Agent Process status ------------------------"
tasklist /V | findstr -ir \ossec-agent.exe
echo .
echo "----------------------Rids counter Status -------------------------"
cd rids
grep.exe .  *
cd ..
echo .
echo "--------------------- Sample last three lines of logs ------------"
tail.exe -3 ossec.log
