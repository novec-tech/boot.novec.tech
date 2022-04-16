cd /home/ipxe/src/
apt install curl -y
curl https://github.com/novec-tech/boot.novec.tech/blob/main/custom.ipxe -output custom.ipxe
rm -rf bin
make bin/ipxe.iso EMBED=custom.ipxe
