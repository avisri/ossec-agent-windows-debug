#!/bin/bash

echo '----------------------Server Info ---------------------------------'
grep.exe Using ../ossec.log | tail -2
echo
echo '----------------------Agent Process status ------------------------'
#this doesn't work as bash reads /V as V:/
#tasklist /V | ./grep.exe  ossec-agent.exe
tasklist  | grep.exe  ossec-agent.exe
echo
echo '----------------------Rids counter Status -------------------------'
grep.exe . 	../rids/*
echo
echo
echo
echo "                           Failures                                 "
echo '---------------------------------------------------------------------'
grep 'Unable to send' ../ossec.log | tail -2 
echo '--------'
echo 'Total:' 
grep -c  'Unable to send' ../ossec.log
echo
echo '--------------------- Sample last three lines of logs -------------'
tail.exe -3 	../ossec.log
