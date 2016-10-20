# HDP-multi-node-docker
provisioning of a multi-node hadoop cluster using docker

# known issues:
* the ambari-agent on the master node cannot be named the same hostname as the host which is why the name is hardcoded in the ```start_containers.sh```
as it will try to point to itself to find the ambari-server and therefore fail.

### Required files in binaries folder :
* ambari-2.1.2.1-centos6.tar.gz
* HDP-2.3.2.0-centos6-rpm.tar.gz
* HDP-UTILS-1.1.0.20-centos6.tar.gz
* jdk-8u101-linux-x64.rpm

# to run
1. update hosts to reflect your setup. this file will be needed as part of the image build
2. choose and download your ambari and HDP versions the untar in the "binaries" directory
3. (optional) to download directly from online hdp repo update the ambari.repo and hdp.repo file in both the amabri-server and amabri-agent template 
folders.
3. start the htpd docker service. update the start script in the dir "httpd" to reflect your setup.
4. run ```build_images.sh```
5. export and load agent image to all hosts in your cluster
6. update the ambari-agent.init file to point to your ambari-agent host
7. run ```start_containers.sh``` on master-node and ```start_agent.sh``` on all other hosts
8. provision cluster with ambari via http://"master-node-host":8080. 

### Ambari Console:

point to the local HDP binaries during the install by replacing the default IP addresses (for Centos 6) with:
* HDP-2.3:  		        http://192.168.33.10:8033/HDP/centos6/2.x/updates/2.3.2.0
* HDP-UTILS-1.1.0.20:  	    http://192.168.33.10:8033/HDP-UTILS-1.1.0.20/repos/centos6

