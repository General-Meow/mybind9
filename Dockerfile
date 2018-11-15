# Build: docker build -t generalmeow/shadow:mybind9-<VER> .
# Run this with docker run -d --name mybind9 -p 53:53 -p 53:53/udp generalmeow/shadow:mybind9-<VER>
# Make sure you disable dnsmasq for the networking manager and restart before using this
# nano /etc/NetworkManager/NetworkManager.conf - hash it out
FROM alpine:3.5
MAINTAINER Paul Hoang 2018-05-19

#install bind, default version as of 2018-05-19
RUN ["apk", "update"]
RUN ["apk", "add", "bind"]
ADD ./etc/bind/db.192.168 /etc/bind/db.192.168
ADD ./etc/bind/db.paulhoang.com /etc/bind/db.paulhoang.com
ADD ./etc/bind/named.conf /etc/bind/named.conf
ADD ./etc/bind/named.conf.local /etc/bind/named.conf.local
ADD ./etc/bind/named.conf.options /etc/bind/named.conf.options
RUN ["mkdir", "-p", "/var/cache/bind"]
EXPOSE 53
CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
#CMD ["/bin/bash"]
