$TTL    604800
@       IN      SOA     ns1.nagoya-foundation.com. root.nagoya-foundation.com. (
                  3       ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
nagoya-foundation.com.     IN      NS      ns1.nagoya-foundation.com.

; name servers - A records
ns1.nagoya-foundation.com.          IN      A      173.20.0.2

www.nagoya-foundation.com.        IN      A      173.20.0.3
b2b.nagoya-foundation.com.        IN      A      173.20.0.4
