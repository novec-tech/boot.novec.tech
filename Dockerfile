FROM jnovec/ipxe-dev:ready

RUN git clone https://github.com/novec-tech/boot.novec.tech/ \
    && chmod +x boot.novec.tech/download_and_build.sh && boot.novec.tech/download_and_build.sh 
    
