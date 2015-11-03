#!/bin/bash

echo '----------------------Server Info ---------------------------------'
grep Using ../logs/ossec.log | tail -2
echo
echo '----------------------Agent Process status ------------------------'
#this doesn't work as bash reads /V as V:/
#tasklist /V | ./grep  ossec-agent.exe
ps -ef  | grep  ossec-agent
echo
echo '----------------------Rids counter Status -------------------------'
grep . 	../queue/rids/*
echo
echo
echo
echo "                           Failures                                 "
echo '---------------------------------------------------------------------'
grep 'Unable to send' ../logs/ossec.log | tail -2 
echo '--------'
echo 'Total:' 
grep -c  'Unable to send' ../logs/ossec.log
echo
echo '--------------------- Sample last three lines of logs -------------'
tail -3 	../logs/ossec.log
