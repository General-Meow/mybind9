$TTL    604800
@       IN      SOA     pine.paulhoang.com. paul.localhost. (
                              7         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
; name servers - NS records
          IN      NS      pine.paulhoang.com.

; name servers - A records
odroid.paulhoang.com.       IN    A   192.168.1.50
nuc.paulhoang.com.          IN    A   192.168.1.51
pine.paulhoang.com.         IN    A   192.168.1.52
tinker.paulhoang.com.       IN    A   192.168.1.53

enterprise.paulhoang.com.   IN    A   192.168.1.70
defiant.paulhoang.com.      IN    A   192.168.1.71
prometheus.paulhoang.com.   IN    A   192.168.1.72
voyager.paulhoang.com.      IN    A   192.168.1.73

whitepearl.paulhoang.com.   IN    A   192.168.1.74
