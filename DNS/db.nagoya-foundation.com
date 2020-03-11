$TTL    604800
@       IN      SOA     ns1.woody-toys.be. root.woody-toys.be. (
                  3       ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
woody-toys.be.     IN      NS      ns1.woody-toys.be.

; name servers - A records
ns1.woody-toys.be.          IN      A      173.20.0.2

www.woody-toys.be.        IN      A      173.20.0.3
b2b.woody-toys.be.        IN      A      173.20.0.4
