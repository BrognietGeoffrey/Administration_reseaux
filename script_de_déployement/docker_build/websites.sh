#!/bin/bash

docker build -t b2b websites/b2b/.
docker build -t www websites/www/.
docker build -t proxy websites/proxy/.

run --name=proxy --net=dmz-swarm -p 80:80 -p 443:443 -d proxy
docker run --name=b2b --net=dmz-swarm -d b2b
docker run --name=www --net=dmz-swarm -d www
