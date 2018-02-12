Create Docker-Machine

export MACHINE_STORAGE_PATH=/tmp 
docker-machine create default
eval $(docker-machine env default)
docker run -it --privileged --name debian rizkyario/debian
docker exec -it debian bash

Get In to Docker-Machine

export MACHINE_STORAGE_PATH=/tmp 
eval $(docker-machine env default)
docker exec -it debian bash

Network

08 traceroute slash16.org
09 nslookup 42.fr
10 traceroute slash16.org
11 traceroute slash16.org | grep nat-1
12 traceroute 10.51.1.253
14 host 10.51.1.81


System
03 https://www.cyberciti.biz/faq/debian-change-hostname-permanently/
04
05
06

Scripting