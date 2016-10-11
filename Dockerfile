# Run this with docker run -d --name mybind9 -p 53:53 -p 53:53/udp generalmeow/mybind9
# Make sure you disable dnsmasq for the networking manager and restart before using this
# nano /etc/NetworkManager/NetworkManager.conf - hash it out
FROM ubuntu:16.04
MAINTAINER Paul Hoang 2016-06-26
RUN ["apt-get", "update", "-y"]
RUN ["apt-get", "upgrade", "-y"]

#install bind, default version as of 2016-06-26
RUN ["apt-get", "install", "-y", "bind9=1:9.10.3.dfsg.P4-8ubuntu1"]
ADD ./etc/bind/db.10 /etc/bind/db.10
ADD ./etc/bind/db.paulhoang.com /etc/bind/db.paulhoang.com
ADD ./etc/bind/named.conf.local /etc/bind/named.conf.local
ADD ./etc/bind/named.conf.options /etc/bind/named.conf.options
VOLUME /etc/bind
EXPOSE 53
CMD ["/usr/sbin/named", "-c", "/etc/bind/named.conf", "-f"] 
