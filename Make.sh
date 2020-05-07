#!/bin/bash

if [ $1 == "-i" ]; then
  ./script_de_déployement/docker_build/build_internal.sh
  ./script_de_déployement/docker_build/deployement_internal.sh
elif [ $1 == "-w" ]; then
  ./script_de_déployement/docker_build/websites.sh
elif [ $1 == "--build-all" ]; then
  ./script_de_déployement/docker_build/build_all.sh
elif [ $1 == "-e" ]; then
  ./script_de_déployement/docker_build/deployement_external_dns.sh
else
  echo "incorrect input"
fi
