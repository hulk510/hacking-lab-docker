# https://www.kali.org/docs/containers/official-kalilinux-docker-images
FROM kalilinux/kali-rolling

RUN apt-get update && apt-get install -y metasploit-framework
RUN apt-get install -y vim netcat mariadb-client hydra smbclient iputils-ping net-tools man locate
# vim 入れたらviでできるけどviとvimって違うと思ってたんやけどどうなんやろ？どっちも入れてんのかな？
