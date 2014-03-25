#!/bin/sh -eux

cp /etc/apk/repositories /etc/apk/repositories.orig
echo "http://mirror.cabtec.net/alpine/v2.7/main" > /etc/apk/repositories

apk update
apk upgrade
