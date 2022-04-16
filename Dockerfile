FROM jnovec/ipxe-dev:ready

RUN curl https://raw.githubusercontent.com/novec-tech/boot.novec.tech/main/custom.ipxe > /home/ipxe/src/custom.ipxe

