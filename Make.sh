#!/bin/bash

if [ $1 == "-i" ]; then
  #./script_de_déployement/docker_build/build.
  #./script_de_déployement/docker_build/deployement.sh
  echo "internal"
elif [ $1 == "-w" ]; then
  echo "websites"
else
  echo "incorrect input"
fi
