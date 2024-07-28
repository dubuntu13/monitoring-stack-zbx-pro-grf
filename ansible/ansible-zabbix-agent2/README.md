# ansible-zabbix-agent

> Introduction: If you are familiar with Ansible and want to Install **zabbix-agent** to multiple servers with different distribution's and os version's. Before starting, I will answer some common questions that you may have:
>>-  *Why do I download localy zabbix-agent's file and copy it to the server's?*<br/>
>>The reason is, in my project's ther was not access to the internet in all the server's, so I had to download in my host and copy it localy to the server.
>>---
>>- What is **custom.conf** file?<br/>
>>  I had sharped all **zabbix-agent\*.conf** line's, to do all my configuration need to the **zabbix-agent\*.d** as multiple **\*.conf** files.
>>---
---
### It's show time baby<br/>

1. Copy **zabbix-agent2** directory into you role directory and leave it there.<br/>
2. Copy **playbook_zabbix.yml** file to the same directory as your **role** directory.<br/>

*Now we can make our change to the playbook and what ever we want to change*<br/>


