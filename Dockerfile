FROM debian:jessie
MAINTAINER rnugroho@student.42.fr

RUN apt-get update \
 && apt-get install -y apt-utils git iptables cron rsyslog zsh curl \
 && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
 && service rsyslog start