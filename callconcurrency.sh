#!/bin/bash
#Script to monitor concurrent call channels. Outputs date, time, and number of concurrent calls to a CSV file.
screen -D -m -L -S CallConcurrency -t CallConcurrency watch -t -n 10 "(date '+TIME,%Y-%m-%d,%H:%M:%S' ; ps aux | asterisk -rx 'core show channels' | egrep 'SIP/[[:digit:]]' | wc -l) | xargs |sed -e 's/ /\,/g' | tee -a callconcurrency.csv"