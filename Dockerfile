FROM debian:jessie
MAINTAINER rnugroho@student.42.fr

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils git iptables cron rsyslog wget ca-certificates

RUN apt-get update && apt-get install -y zsh
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true \

RUN service rsyslog start

RUN git clone https://github.com/rizkyario/42-init.git /root/init/
WORKDIR /root/init/

CMD ["zsh"]