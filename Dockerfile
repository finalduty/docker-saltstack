## finalduty/saltstack
FROM finalduty/archlinux
MAINTAINER FinalDuty <root@finalduty.me>

RUN pacman -Syu --no-confirm salt-zmq

#CMD
