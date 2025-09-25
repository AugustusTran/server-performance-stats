#!/bin/bash

echo " --server performace stats-- "

#cpu usage 
echo -e "\n[CPU Usage]"
top -l 1 | grep "CPU Usage" | awk '{print "CPU Usage: " $3 " user, " $5 " sys, " $7 " idle"}'

#memory usage 
echo -e "\n[Memory Usage]"
vm_stat | head -n 5

#disk usage 

echo -e "\n[Disk Usuage]"
df -h /

#top 5 process by CPu
echo -e "\n[Top 5 Processes by CPU]"
ps -Ao pid,comm,%cpu,%mem -r | head -n 6

echo -e "\n========"
echo " END OF REPORT "

