#!/bin/bash

docker run --privileged -d --name ambari-server-container \
-h $(hostname -f) \
-p 8080:8080 \
-p 8440:8440 \
-p 8441:8441 hjiejan/ambari-server-2.1.2.1


docker run --privileged -d --name ambari-agent-container \
-h master-agent \
-v /vagrant/docker-hadoop-multi-node/ambari-agent.ini:/etc/ambari-agent/conf/ambari-agent.ini \
-p 2181:2181 \
-p 8020:8020 \
-p 8670:8670 \
-p 9000:9000 \
-p 50090:50090 \
-p 8088:8088 \
-p 8050:8050 \
-p 8025:8025 \
-p 8030:8030 \
-p 8141:8141 \
-p 45454:45454 \
-p 10200:10200 \
-p 8188:8188 \
-p 8190:8190 \
-p 19888:19888 \
-p 10000:10000 \
-p 9999:9999 \
-p 9933:9933 \
-p 10015:10015 \
-p 16000:16000 \
-p 16010:16010 \
-p 50070:50070 \
-p 50470:50470 \
-p 50075:50075 \
-p 50475:50475 \
-p 50010:50010 \
-p 50020:50020 \
-p 50030:50030 \
-p 16020:16020 \
-p 16030:16030 \
-p 45455:45454 \
-p 8042:8042 \
-p 6667:6667 \
-p 6188:6188 \
-p 9995:9995 hjiejan/ambari-agent-2.1.2.1

