#!/bin/bash

[[ `whoami` != 'root' ]] && echo "Permission denied please run with sudo command" && exit 1

echo "Cleaning up general logs"

find /var/log/ -iname "messages*" -type f -size +10M -exec rm -rf {} \; && \
    echo "/var/logs/messages logs removed"

find /run/log/journal -type f -size +10M -exec rm -rf {} \;  && \
    echo "/run/log/journal logs removed"

find /var/lib/docker -iname "*.log" -size +1G -delete && \
    echo "/var/lib/docker logs removed"

docker rmi -f $(docker images -f "dangling=true" -q) 2> /dev/null

find /var/log/journal -type f -iname system@* -delete

find /var/log/journal -type f -iname  system.journal -exec truncate -s 0 {} \;

find /var/log/journal -type f -iname  user@  -delete

find /var/log/journal -type f -iname user-*.journal -exec truncate -s 0 {} \;

###V2
find /var/log/mongodb -iname "mongo[sd].log" -type f -size +10M -exec truncate -s 0 {} \;  && \
    echo "/var/log/mongodb logs removed"

find /mnt/ -size +1G -type f \( -iname "mgov.log" -o -iname "samp.log" -o -iname "vap.log" -o -iname "my.log" -o -iname "myiran.log" -o -iname "aaa.log" -o -iname "sampadmin.log" -o -iname "sampuser.log" \) -exec truncate -s 0 {} + && \
#    echo "app logs removed."
