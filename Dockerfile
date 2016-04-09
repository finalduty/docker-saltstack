## finalduty/saltstack
FROM finalduty/docker-archlinux-base
MAINTAINER FinalDuty <root@finalduty.me>

RUN pacman -Syu --noconfirm salt-zmq

EXPOSE 4505 4506
ENTRYPOINT /usr/bin/salt-master -d; /bin/bash 
