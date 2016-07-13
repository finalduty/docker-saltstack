FROM finalduty/docker-centos-base
MAINTAINER FinalDuty <root@finalduty.me>
EXPOSE 4505 4506
CMD /usr/bin/salt-master -d; /bin/bash 

ADD saltstack.repo /etc/yum.repos.d/
ADD master   /etc/salt/

RUN yum install -y git; yum clean all -y &>/dev/null
RUN yum install -y python-pygit2; yum clean all -y &>/dev/null
RUN yum install -y salt-master; yum clean all -y &>/dev/null
RUN yum install -y cronie; yum clean all -y &>/dev/null

#ADD salt_highstate.cron /etc/cron.d/
