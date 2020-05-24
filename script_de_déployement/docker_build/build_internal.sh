#!/bin/bash

docker build -t resolveur DNS/resolveur/.
docker build -t soa-public DNS/authoritative_only_server/.
docker build -t dnsutils hosts/ubuntu_dnsutils/.
docker build -t host-mail hosts/ubuntu_mail/.
docker build -t intranet websites/intranet/.
docker build -t database websites/database/.
