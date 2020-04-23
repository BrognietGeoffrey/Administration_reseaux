$TTL    604800
@       IN      SOA     ns1.wt3. root.wt3. (
                  3       ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
@                      IN      NS      ns1.wt3.

; name servers - A records
ns1    IN      A      51.178.41.115

b2b    IN      A      51.178.41.7
www    IN      A      51.178.41.16
