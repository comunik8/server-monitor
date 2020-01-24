#!/bin/bash
disku="false"
cpuu=$[100-$(vmstat 1 2|tail -1|awk '{print $15}')] #gives 2 diget number to represent overall cpu usage (takes 1 second to run)
memu=$(free | awk ' /Mem:/ {print $3/$4}') #gives mem usage in % to 3 decimal places
df -h | awk 'NR>1 {print $5}' | while read line; do
  if [ "${line::-1}" -gt "80" ]; then
    disku="true"
    break
  fi
done
