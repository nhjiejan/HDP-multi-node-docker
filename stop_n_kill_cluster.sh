#!/bin/bash

docker stop ambari-server-container ambari-agent-container && docker rm ambari-agent-container ambari-server-container
