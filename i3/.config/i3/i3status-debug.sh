#!/bin/bash
echo $(date) started >> /tmp/i3status.log
while :
do
    i3status 2> /tmp/i3status-err.log | while :
    do
        read line
        echo "$line"
        touch /tmp/i3status-last-seen.log
    done
    echo $(date) restarted >> /tmp/i3status.log
done
