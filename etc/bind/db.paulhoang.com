$TTL    604800
@       IN      SOA     tinker.paulhoang.com. paul.localhost. (
                              8         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
; name servers - NS records
          IN      NS      tinker.paulhoang.com.

; name servers - A records
tinker.paulhoang.com.       IN    A   192.168.1.80
nuc.paulhoang.com.          IN    A   192.168.1.81
kodi.paulhoang.com.         IN    A   192.168.1.82
