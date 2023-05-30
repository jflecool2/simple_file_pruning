#!/bin/sh
echo "Will delete all files older than ${MINUTES_OLD} minutes old from /mnt/target every 60 seconds"
while true; do
    find /mnt/target -type f -mmin +${MINUTES_OLD} -exec echo {} \;
    find /mnt/target -type f -mmin +${MINUTES_OLD} -exec rm {} \;
    sleep 60
done