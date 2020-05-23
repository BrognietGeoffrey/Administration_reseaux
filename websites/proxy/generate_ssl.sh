#!/bin/bash

#Change to your company details

country='BE'
state='Brabant Wallon'
locality='Bruxelles'
organization='EPHEC'
organizationalunit='IT'
email='.'

openssl req -newkey rsa:2048 -new -nodes -keyout key.pem -out csr.pem -subj "/C=$country/ST=$state/L=$locality/O=$organization/OU=$organizationalunit/CN=$commonname/emailAddress=$email"
openssl x509 -req -days 365 -in csr.pem -signkey key.pem -out server.crt

echo "---------------------------"
echo "-----Below is your CSR-----"
echo "---------------------------"
echo

cat server.crt

echo
echo "---------------------------"
echo "-----Below is your Key-----"
echo "---------------------------"
echo

cat key.pem
