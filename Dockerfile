FROM ubuntu:bionic

RUN apt update -y
RUN apt install git -y
WORKDIR "/home/"
RUN git clone https://github.com/ipxe/ipxe.git

# install depencies needed to run make
RUN apt install gcc binutils make perl mtools isolinux liblzma-dev -y

WORKDIR "/home/ipxe/src"
RUN curl https://raw.githubusercontent.com/novec-tech/boot.novec.tech/main/custom.ipxe > /home/ipxe/src/custom.ipxe
RUN make bin/ipxe.iso EMBED=custom.ipxe
RUN cp /home/ipxe/src/bin/ipxe.iso /home/ipxe/ipxe.iso
RUN curl -X POST https://maker.ifttt.com/trigger/ipxe/with/key/bWOyU612jYytR2KRWmPJMF
