#!/bin/bash

# build images:

## ambari-server
docker build -t hjiejan/ambari-server-2.1.2.1 ambari-server-template/

##ambari-agent
docker build -t hjiejan/ambari-agent-2.1.2.1 ambari-agent-template/
