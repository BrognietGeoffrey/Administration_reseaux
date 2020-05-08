#!/bin/bash

docker rmi diomenios/administration_reseau:intranet
docker rmi diomenios/administration_reseau:node_b2b
docker rmi diomenios/administration_reseau:node_www
docker rmi diomenios/administration_reseau:node_proxy
docker rmi diomenios/administration_reseau:resolveur
docker rmi diomenios/administration_reseau:soa-public
docker rmi diomenios/administration_reseau:host_dns
docker rmi diomenios/administration_reseau:mariadb

docker rmi intranet
docker rmi soa-public
docker rmi resolveur
docker rmi b2b
docker rmi www
docker rmi database
docker rmi proxy
docker rmi dnsutils
