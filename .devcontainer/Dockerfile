FROM manjarolinux/base:latest

ARG COUNTRY=China
WORKDIR /root
ENV DISPLAY=:0

RUN pacman-mirrors -c ${COUNTRY} -m rank &&\
    pacman -S --noconfirm racket xorg-server-xvfb &&\
    raco pkg install --auto racket-langserver
