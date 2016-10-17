#!/bin/bash
docker run -d --name local-httpd \
-v /vagrant/docker-hadoop-multi-node/binaries:/usr/local/apache2/htdocs/ \
-h $(hostname -f) \
-p 8033:80 \
httpd
