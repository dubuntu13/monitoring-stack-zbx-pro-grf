#!/bin/bash


##All variables, this is for jully 2024, you can replace the version and change links from zabbix repositorie's.
ZBX_AGNT_DEB_22="https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix/zabbix-agent2_6.4.1-1%2Bubuntu22.04_amd64.deb"
ZBX_AGNT_DEB_20="https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix/zabbix-agent2_6.4.12-1%2Bubuntu20.04_amd64.deb"
ZBX_AGNT_DEB_18="https://repo.zabbix.com/zabbix/6.4/ubuntu/pool/main/z/zabbix/zabbix-agent2_6.4.11-1%2Bubuntu18.04_amd64.deb"
ZBX_AGNT_RHEL_6="https://repo.zabbix.com/zabbix/6.4/rhel/6/x86_64/zabbix-agent2-6.4.17-release1.el6.x86_64.rpm"
ZBX_AGNT_RHEL_7="https://repo.zabbix.com/zabbix/6.4/rhel/7/x86_64/zabbix-agent2-6.4.14-release1.el7.x86_64.rpm"
ZBX_AGNT_RHEL_9="https://repo.zabbix.com/zabbix/6.4/rhel/9/x86_64/zabbix-agent2-6.4.0-release1.el9.x86_64.rpm"
PRCE2_RHEL="https://rpmfind.net/linux/openmandriva/cooker/repository/aarch64/main/release/pcre2-10.44-1-omv2490.aarch64.rpm"

##Download all of them if you want ZABBIX

urls=(
    "$ZBX_AGNT_DEB_22"
    "$ZBX_AGNT_DEB_20"
    "$ZBX_AGNT_DEB_18"
    "$ZBX_AGNT_RHEL_6"
    "$ZBX_AGNT_RHEL_7"
    "$ZBX_AGNT_RHEL_9"
    "$PRCE_RHEL"
)

for url in  "${urls[@]}"; do
    wget -P ./roles/zabbix-agent2/files/ "$url"
done
