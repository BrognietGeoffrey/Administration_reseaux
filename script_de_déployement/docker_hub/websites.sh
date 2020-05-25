#!/bin/bash

docker run --name=proxy --net=dmz-swarm -p 80:80 -p 443:443 -d diomenios/administration_reseau:proxy
docker run --name=b2b --net=dmz-swarm -d diomenios/administration_reseau:b2b
docker run --name=www --net=dmz-swarm -d diomenios/administration_reseau:www
