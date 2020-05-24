#!/bin/bash

docker build -t b2b websites/b2b/.
docker build -t database websites/database/.
docker build -t www websites/www/.
docker build -t proxy websites/proxy/.
docker build -t resolveur DNS/resolveur/.
docker build -t soa-public DNS/authoritative_only_server/.
docker build -t dnsutils hosts/ubuntu_dnsutils/.
docker build -t host-mail hosts/ubuntu_mail/.
docker build -t intranet websites/intranet/.
