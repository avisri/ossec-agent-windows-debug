#!/bin/bash 

tasklist /M | findstr -ir \ossec-agent.exe
./grep.exe . rids/*
./tail.exe -3 ossec.log
