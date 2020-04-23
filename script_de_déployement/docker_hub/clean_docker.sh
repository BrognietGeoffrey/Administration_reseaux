#!/bin/bash

docker stop node host1 host2 dns-server

docker rmi diomenios/administration_reseau:bind9  diomenios/administration_reseau:host-ubuntu  diomenios/administration_reseau:node

