# https://www.kali.org/docs/containers/official-kalilinux-docker-images
FROM kalilinux/kali-rolling

ARG USERNAME=hulk510
ARG UID=1000
ARG GID=1000

# envは多分環境変数として設定できるからシェルの$HOMEで展開される部分を変えれる？
ENV HOME /home/${USERNAME}

# RUN groupadd -g $GID $GROUPNAME && \
#   useradd -m -s /bin/bash -u $UID -g $GID $USERNAME
# useraddだけでgroupaddしなくても無かったら勝手に作ってくれるっぽい
# -s 入れてないと多分起動シェルがshとかになるんかな？
RUN useradd -m ${USERNAME} -s /bin/bash
RUN gpasswd -a ${USERNAME} sudo

# chpasswdはuser:passwordで設定されるらしい
# コマンドでパスワードを設定できるやつって感じかな
# https://www.mtioutput.com/entry/2018/09/20/135157
RUN echo "${USERNAME}:asdf" | chpasswd

USER ${USERNAME}
WORKDIR ${HOME}

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
