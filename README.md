# mybind9
bind9 config

Build with: docker build -tag generalmeow/shadow:mybind9-<VER> .

Run with: docker run -p 53:53 -p 53:53/udp --name mybind9 -d --restart=unless-stopped generalmeow/shadow:mybind9-1.8-arm
