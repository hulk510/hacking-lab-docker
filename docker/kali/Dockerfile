# https://www.kali.org/docs/containers/official-kalilinux-docker-images
FROM kalilinux/kali-rolling

ARG USERNAME=hulk510
ARG GROUPNAME=hulk510
ARG UID=1000
ARG GID=1000

RUN groupadd -g $GID $GROUPNAME && \
  useradd -m -s /bin/bash -u $UID -g $GID $USERNAME

RUN apt-get update && apt-get install -y metasploit-framework
RUN apt-get install -y vim \
  netcat-openbsd \
  mariadb-client \
  hydra \
  smbclient \
  iputils-ping \
  net-tools \
  man \
  locate \
  hexchat \
  tcpdump \
  apache2

# RUN echo 1 | apt install -y xrdp
# hexchat display設定ができないのかエラーになる。
# vim 入れたらviでできるけどviとvimって違うと思ってたんやけどどうなんやろ？どっちも入れてんのかな？
