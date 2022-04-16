cd /home/ipxe/src/
apt install curl -y
curl https://raw.githubusercontent.com/novec-tech/boot.novec.tech/main/custom.ipxe > custom.ipxe
rm -rf bin
make bin/ipxe.iso EMBED=custom.ipxe
cp bin/ipxe.iso /home/ipxe/ipxe.iso
