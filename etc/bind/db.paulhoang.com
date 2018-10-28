$TTL    604800
@       IN      SOA     pine.paulhoang.com. paul.localhost. (
                              8         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
; name servers - NS records
          IN      NS      tinker.paulhoang.com.

; name servers - A records
nuc.paulhoang.com.          IN    A   192.168.1.81
tinker.paulhoang.com.       IN    A   192.168.1.80
kodi.paulhoang.com.         IN    A   192.168.1.82
