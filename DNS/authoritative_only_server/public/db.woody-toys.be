$TTL    604800
@       IN      SOA     ns1.woody-toys.be. root.woody-toys.be. (
                  3       ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
@                      IN      NS      ns1.woody-toys.be.

; name servers - A records
ns1    IN      A      51.178.41.115

b2b    IN      A      51.178.41.7
www    IN      A      51.178.41.16
