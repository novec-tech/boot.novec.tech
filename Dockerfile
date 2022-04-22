FROM ubuntu:bionic

# update and install git & curl 
RUN apt update -y
RUN apt install git curl -y

# clone ipxe repo
WORKDIR /home/
RUN git clone https://github.com/ipxe/ipxe.git

# install depencies needed to compile ipxe
RUN apt install gcc binutils make perl mtools isolinux liblzma-dev genisoimage -y
# compile ipxe with custom ipxe script
WORKDIR /home/ipxe/src
RUN curl https://raw.githubusercontent.com/novec-tech/boot.novec.tech/main/custom.ipxe > /home/ipxe/src/custom.ipxe
RUN make bin/ipxe.iso EMBED=custom.ipxe

# serve ipxe.iso via web server
#the following ARG turns off the questions normally asked for location and timezone for Apache
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install apache2 -y
#now start the server
CMD ["apachectl", "-D", "FOREGROUND"]
RUN cp /home/ipxe/src/bin/ipxe.iso /var/www/html/ipxe.iso
