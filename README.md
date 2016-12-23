# mybind9
bind9 config

Build with: docker build -tag generalmeow/mybind9\<tag> .
Push with: 
Run with: docker run -p 53:53 -p 53:53/udp --name mybind9 -d generalmeow/mybind9:\<tag>