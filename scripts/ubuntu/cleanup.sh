#!/bin/bash -eux

apt-get -y purge libx11-data xauth libxmuu1 libxcb1 libx11-6 libxext6
apt-get -y purge ppp pppconfig pppoeconf
apt-get -y purge popularity-contest
apt-get -y clean
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?
