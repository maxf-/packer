#!/bin/sh -eux

cp /etc/apk/repositories /etc/apk/repositories.orig
tail -n +2 /etc/apk/repositories.orig > /etc/apk/repositories

apk update
apk upgrade
