FROM jnovec/ipxe-dev:ready

WORKDIR "/home/ipxe/src/"
RUN curl https://raw.githubusercontent.com/novec-tech/boot.novec.tech/main/custom.ipxe > /home/ipxe/src/custom.ipxe
RUN make bin/ipxe.iso EMBED=custom.ipxe
RUN cp /home/ipxe/src/bin.ipxe.iso /home/ipxe/ipxe.iso
RUN curl -X POST https://maker.ifttt.com/trigger/ipxe/with/key/bWOyU612jYytR2KRWmPJMF
