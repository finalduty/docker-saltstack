## finalduty/saltstack
FROM finalduty/docker-archlinux-base
MAINTAINER FinalDuty <root@finalduty.me>

RUN pacman -Syu --noconfirm salt-zmq

ENTRYPOINT /usr/bin/salt-master && /bin/bash -i
