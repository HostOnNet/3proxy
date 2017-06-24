#!/bin/bash

/usr/bin/killall 3proxy
rm -rf /etc/3proxy/ /etc/init.d/3proxy /usr/bin/3proxy

mkdir /etc/3proxy/

wget https://github.com/HostOnNet/3proxy/raw/master/3proxy -O /usr/bin/3proxy
wget https://github.com/HostOnNet/3proxy/raw/master/3proxy.cfg -O /etc/3proxy/3proxy.cfg
wget https://github.com/HostOnNet/3proxy/raw/master/users -O /etc/3proxy/users
wget https://raw.github.com/HostOnNet/3proxy/master/3proxyinit -O /etc/init.d/3proxy

chmod 600 /etc/3proxy/3proxy.cfg
chmod 600 /etc/3proxy/users
chmod 755 /etc/init.d/3proxy
chmod 755 /usr/bin/3proxy

ln -s /etc/3proxy/users /etc/3proxy/.proxyauth

update-rc.d 3proxy defaults
service 3proxy start
