FROM jnovec/ipxe-dev:ready

WORKDIR "/home/ipxe/src/"
RUN curl https://raw.githubusercontent.com/novec-tech/boot.novec.tech/main/custom.ipxe > /home/ipxe/src/custom.ipxe
RUN ls

RUN curl -X POST https://maker.ifttt.com/trigger/ipxe/with/key/bWOyU612jYytR2KRWmPJMF
