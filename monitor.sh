#!/bin/bash
cpuu=$[100-$(vmstat 1 2|tail -1|awk '{print $15}')] #gives 2 diget number to represent overall cpu usage (takes 1 second to run)
