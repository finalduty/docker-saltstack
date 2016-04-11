## finalduty/saltstack
FROM finalduty/docker-archlinux-base
MAINTAINER FinalDuty <root@finalduty.me>
EXPOSE 4505 4506
CMD /usr/bin/salt-master -d; /bin/bash 

ADD master /etc/salt/

RUN pacman -S --noconfirm python2-pygit2; pacman -Scc --noconfirm &>/dev/null
RUN pacman -S --noconfirm salt-zmq; pacman -Scc --noconfirm &>/dev/null

