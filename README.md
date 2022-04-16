# boot.novec.tech

docker pull jnovec/ipxe-dev:ready

docker volume create ipxe-output

docker run -d -it --name ipxe -v ipxe-output:/home/ipxe jnovec/ipxe-dev:latest

docker exec -it ipxe /bin/bash

