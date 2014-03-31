#!/bin/sh

# author: Christian Berendt <berendt@b1-systems.de>

timestamp=$(date +"%Y%m%d")
url=http://cdimage.ubuntu.com/ubuntu-server/daily/$timestamp
url_iso=$url/trusty-server-amd64.iso
url_checksum=$url/SHA1SUMS
file_output=ubuntu-14.04-amd64.json

if [[ $(curl --silent "$url/" | grep "404 Not Found" | wc -l) -ne 0 ]]; then
    echo "image $timestamp not yet available"
    exit 1
fi

checksum=$(curl -s $url_checksum | grep trusty-server-amd64.iso | awk '{ print $1 }')

sed -e "s/CHECKSUM/$checksum/" -e "s/TIMESTAMP/$timestamp/" ${file_output}.tmpl > $file_output
git add $file_output && git commit -m "updated Ubuntu 14.04 to daily build $timestamp" & git push
/opt/packer/packer build ubuntu-14.04-amd64.json
