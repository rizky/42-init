FROM debian:jessie
MAINTAINER rnugroho@student.42.fr

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils git iptables cron rsyslog wget ca-certificates openssh-server

RUN apt-get update && apt-get install -y zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true \

RUN service ssh start

COPY . /root/init/
WORKDIR /root/init/

RUN service rsyslog start

CMD ["zsh"]