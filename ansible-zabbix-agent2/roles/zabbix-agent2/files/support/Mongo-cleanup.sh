#!/bin/bash
[[ `whoami` != 'root' ]] && echo "Permission denied please run with sudo command" && exit 1

echo "Cleaning up general logs"

find /var/log/ -iname "messages*" -type f -size +10M -exec rm -rf {} + && \
    echo "/var/logs/messages logs removed"

find /run/log/journal -type f -size +10M -exec rm -rf {} +  && \
    echo "/run/log/journal logs removed"

find /var/log/mongodb -iname "mongo[sd].log" -type f -size +10M -exec truncate -s 0 {} +  && \
    echo "/var/log/mongodb logs removed"
