#!/bin/bash

# create at runtime
mkdir -p /dev/net
if [ ! -c /dev/net/tun ]; then
    mknod /dev/net/tun c 10 200
fi

/usr/sbin/openvpn "${OPENVPN_CONFIG}"
