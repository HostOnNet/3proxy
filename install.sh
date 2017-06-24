#!/bin/bash

rm -rf /etc/3proxy/ /etc/init.d/3proxy

mkdir /etc/3proxy/
cd /etc/3proxy/

wget https://github.com/HostOnNet/3proxy/raw/master/3proxy
wget https://github.com/HostOnNet/3proxy/raw/master/3proxy.cfg
wget https://github.com/HostOnNet/3proxy/raw/master/.proxyauth
wget https://raw.github.com/HostOnNet/3proxy/master/3proxyinit -O /etc/init.d/3proxy

chmod 600 /etc/3proxy/3proxy.cfg
chmod 600 /etc/3proxy/.proxyauth
chmod 755 /etc/init.d/3proxy

update-rc.d 3proxy defaults
service 3proxy start
