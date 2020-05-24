#!/bin/bash

if [ $1 == "-i" ]; then
  ./script_de_déployement/docker_build/build_internal.sh
  ./script_de_déployement/docker_build/deployement_external_dns.sh
  ./script_de_déployement/docker_build/deployement_internal.sh
elif [ $1 == "-w" ]; then
  ./script_de_déployement/docker_build/websites.sh
elif [ $1 == "-e" ]; then
  ./script_de_déployement/docker_build/deployement_external_dns.sh
elif [ $1 == "--build-all" ]; then
  ./script_de_déployement/docker_build/build_all.sh
elif [ $1 == "--build-resolveur" ]; then
  docker build -t resolveur DNS/resolveur/.
elif [ $1 == "--build-soa-public" ]; then
  docker build -t soa-public DNS/authoritative_only_server/.
elif [ $1 == "--build-intranet" ]; then
  docker build -t intranet websites/intranet/.
elif [ $1 == "--build-database" ]; then
  docker build -t database websites/database/.
elif [ $1 == "--build-www" ]; then
  docker build -t www websites/www/.
elif [ $1 == "--build-b2b" ]; then
  docker build -t b2b websites/b2b/.
elif [ $1 == "--build-proxy" ]; then
  docker build -t proxy websites/proxy/.
elif [ $1 == "--build-dnsutils" ]; then
  docker build -t dnsutils hosts/ubuntu_dnsutils/.
elif [ $1 == "--build-web" ]; then
  docker build -t dnsutils hosts/ubuntu_web/.
elif [ $1 == "--build-mail" ]; then
  docker build -t dnsutils hosts/ubuntu_mail/.
else
  echo "incorrect input"
fi
