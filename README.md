# boot.novec.tech

easy ;)

docker volume create ipxe-output

start container:

docker run -d --name ipxe -v ipxe-output:/home/ipxe jnovec/ipxe-dev:latest

connect to container:

docker exec -it ipxe /bin/bash

