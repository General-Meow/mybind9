$TTL    604800
@       IN      SOA     nuc.paulhoang.com. paul.localhost. (
                              5         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
; name servers - NS records
        IN      NS      nuc.paulhoang.com.

; name servers - A records
nuc.paulhoang.com.     IN      A       192.168.1.51
odroid.paulhoang.com.  IN      A       192.168.1.50
blackpearl.paulhoang.com.  IN      A       192.168.1.70
pinkpearl.paulhoang.com.	IN		A		192.168.1.71
redpearl.paulhoang.com.		IN		A		192.168.1.72
greenpearl.paulhoang.com.	IN		A		192.168.1.73
