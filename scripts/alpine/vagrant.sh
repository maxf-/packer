#!/bin/sh -exu

apk add curl
adduser -D vagrant
echo "vagrant:vagrant" | chpasswd
mkdir /home/vagrant/.ssh
curl -o /home/vagrant/.ssh/authorized_keys \
    'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub'
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
