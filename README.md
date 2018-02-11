Create Docker-Machine

export MACHINE_STORAGE_PATH=/tmp 
docker-machine create default
eval $(docker-machine env default)
docker run -it --name debian debian
docker exec -it debian bash


Get In to Docker-Machine

export MACHINE_STORAGE_PATH=/tmp 
eval $(docker-machine env default)
docker run -it --name debian debian
docker exec -it debian bash