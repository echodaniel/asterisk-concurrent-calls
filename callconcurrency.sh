#!/bin/bash
#script to monitor concurrent SIP call channels and output to a CSV file. testing only right now.
mmhistogram -t -n 10 "(date '+TIME,%Y-%m-%d,%H:%M:%S' ; ps aux | asterisk -rx 'core show channels' | egrep 'SIP/[[:digit:]]' | wc -l) | tee -a cclist.csv"
