FROM docker.io/archlinux:latest

ENV LANG=C.UTF-8 TZ=Asiz/Shanghai

RUN pacman -Syyu --noconfirm which nano dnsutils git racket xorg-server-xvfb && \
    echo $'#!/bin/bash\n\nxvfb-run --auto-servernum racket "$@"' > /usr/local/bin/xvfb-racket && \
    chmod +x /usr/local/bin/xvfb-racket && \
    raco pkg install --auto racket-langserver && \
    raco setup && \
    pacman -Sc --noconfirm
