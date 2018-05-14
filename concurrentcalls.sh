#!/bin/bash
#Script to monitor concurrent call channels and output to a CSV file. In testing right now, though the script below does work.
watch -t -n 10 "(date '+TIME,%Y-%m-%d,%H:%M:%S' ; ps aux | asterisk -rx 'core show channels' | egrep 'SIP/[[:digit:]]' | wc -l) | tee -a cclist.csv"
