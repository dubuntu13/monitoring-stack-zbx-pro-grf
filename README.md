# monitoring
This is a simple monitoring stack build.
We will work with some tool's as like as Prometheus, Zabbix and Grafana. and intigrate all of them together.
We need to know a little about ansible and docker to build out new monitoring stack.
ANSIBLE & DOCKER & DB's
_________________
1st.

After get clone of the project

>``cd monitoring-stack-zbx-pro-grf/monitoring_build``

>``sudo docker-compose up -d``

>This will take some minutes to get all images and build all container's.
>>Now run a ``docker ps`` command to see if all of them is perfectly running or not.
>>Now you should access to all the ui's.
>>You can check out this link to find out how to connect to zabbix to grafana:
>><https://grafana.com/grafana/plugins/alexanderzobnin-zabbix-app/>
