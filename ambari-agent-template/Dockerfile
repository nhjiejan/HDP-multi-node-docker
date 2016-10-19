FROM centos:6

RUN yum install -y openssh-server wget
RUN yum install openssh-clients -y
ADD packages_preinstalled.txt /
RUN for i in `cat /packages_preinstalled.txt` ; do yum install -y $i* ; done
RUN echo "hadoop" | passwd --stdin root
RUN chkconfig sshd on

ADD ambari.repo /etc/yum.repos.d/
#ADD hdp.repo /etc/yum.repos.d/

## INSTALL JAVA
RUN wget 192.168.33.10:8033/jdk-8u101-linux-x64.rpm -O /jdk-8u101-linux-x64.rpm
RUN chmod 755 jdk-8u101-linux-x64.rpm
RUN rpm -ivh jdk-8u101-linux-x64.rpm
ENV JAVA_HOME=/usr/java/default

#config files
ADD hosts /
ADD limits.conf /

RUN yum install ambari-agent -y
RUN mkdir /root/.ssh
RUN touch /root/.ssh/authorized_keys
RUN chmod 700 /root/.ssh
RUN chmod 400 /root/.ssh/authorized_keys
ADD id_rsa /root/.ssh/
ADD id_rsa.pub /root/.ssh/
ADD ./start /
CMD ["/start"]
