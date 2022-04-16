!#bin/bash

cd /home/ipxe/src/
curl https://github.com/novec-tech/boot.novec.tech/blob/main/custom.ipxe -output custom.ipxe
rm -rf bin
make bin/ipxe.iso EMBED=custom.ipxe
