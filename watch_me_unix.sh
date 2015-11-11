#!/bin/bash

echo '----------------------Server Info ---------------------------------'
grep Using ../logs/ossec.log | tail -2
echo
echo '----------------------Agent Process status ------------------------'
#this doesn't work as bash reads /V as V:/
#tasklist /V | ./grep  ossec-agent.exe
ps -ef  | grep  ossec | grep -v  grep | grep -v vm 
echo
echo '----------------------Rids counter Status -------------------------'
grep . 	../queue/rids/*
echo
echo
echo
echo "                           Failures                                 "
echo '---------------------------------------------------------------------'
echo "current date:"| tr -d '\n'; date
grep 'Unable to send' ../logs/ossec.log | tail -2 
echo '--------'
echo 'Total:' 
grep -c  'Unable to send' ../logs/ossec.log
echo "                           Errors                                 "
echo '---------------------------------------------------------------------'
echo "current date:"| tr -d '\n'; date
grep -i 'error' ../logs/ossec.log | tail -2 
echo '--------'
echo 'Total:' 
	grep -c -i 'error' ../logs/ossec.log

echo ' ----------------------------DEBUG----------------------------------'
grep DEBUG ../logs/ossec.log  | tail -5
echo
echo '--------------------- Sample last three lines of logs -------------'
tail -3 	../logs/ossec.log
