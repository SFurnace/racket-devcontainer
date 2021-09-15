FROM manjarolinux/base:latest

ARG COUNTRY=China
WORKDIR /root

ENV DISPLAY=:0
COPY xvfb-racket /root/.local/bin/

RUN chmod +x /root/.local/bin/xvfb-racket &&\
    pacman-mirrors -c ${COUNTRY} -m rank &&\
    pacman -Sy --noconfirm racket xorg-server-xvfb &&\
    raco pkg install --auto racket-langserver
