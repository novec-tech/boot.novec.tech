curl https://raw.githubusercontent.com/novec-tech/boot.novec.tech/main/custom.ipxe > /home/ipxe/src/custom.ipxe
cd /home/ipxe/src/
make bin/ipxe.iso EMBED=custom.ipxe
cp /home/ipxe/src/bin/ipxe.iso /home/ipxe/ipxe.iso
