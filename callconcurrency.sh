#!/bin/bash
#script to monitor concurrent SIP call channels and output to a CSV file. testing only right now.
screen -D -m -L -S CallConcurrency -t CallConcurrency watch -t -n 10 "(date '+TIME,%Y-%m-%d,%H:%M:%S' ; ps aux | asterisk -rx 'core show channels' | egrep 'SIP/[[:digit:]]' | wc -l) | xargs |sed -e 's/ /\,/g' | tee -a callconcurrency.csv"
