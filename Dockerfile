FROM debian:jessie
MAINTAINER rnugroho@student.42.fr

RUN apt-get update \
 && apt-get install -y apt-utils iptables cron