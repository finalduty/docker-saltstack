## finalduty/saltstack
FROM finalduty/archlinux
MAINTAINER FinalDuty <root@finalduty.me>

RUN pacman -Syu --noconfirm salt-zmq

#CMD
