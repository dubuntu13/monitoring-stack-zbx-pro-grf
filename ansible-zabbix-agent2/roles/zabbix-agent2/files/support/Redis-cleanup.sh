#!/bin/bash
[[ `whoami` != 'root' ]] && echo "Permission denied please run with sudo command" && exit 1

echo "Cleaning up general logs"

find /var/log/ -iname "messages*" -type f -size +10M -exec rm -rf  {} + && \
    echo "/var/logs/messages logs removed"

find /run/log/journal -type f -size +10M -exec rm -rf  {} +  && \
    echo "/run/log/journal logs removed"

find /var/log -iname redis-*.log -type f -size +10M -exec rm -rf  {} +  && \
    echo "redis logs removed"

find /var/log/journal -type f -iname system@* -delete

find /var/log/journal -type f -iname  system.journal -exec truncate -s 0 {} \;

find /var/log/journal -type f -iname  user@  -delete

find /var/log/journal -type f -iname user-*.journal -exec truncate -s 0 {} \;

