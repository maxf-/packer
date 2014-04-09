#!/bin/sh

rm -f /etc/zypp/repos.d/openSUSE-13.1-1.10.repo
rpm --import http://download.opensuse.org/distribution/13.1/repo/oss/gpg-pubkey-3dbdc284-4be1884d.asc
rpm --import http://download.opensuse.org/distribution/13.1/repo/oss/gpg-pubkey-307e3d54-4be01a65.asc
zypper ar http://download.opensuse.org/distribution/13.1/repo/oss/ opensuse-13.1-oss
zypper ar http://download.opensuse.org/update/13.1/ opensuse-13.1-update
zypper refresh
zypper update -y
