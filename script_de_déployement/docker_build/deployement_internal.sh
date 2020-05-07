#!/bin/bash

docker network create --subnet=172.20.0.0/16 wt

docker run -d --rm --name=resolveur --net=wt --ip=172.20.0.2 resolveur

docker run -d --rm --name=host1 --net=wt --ip=172.20.10.2 --dns=172.20.0.2  dnsutils /bin/bash -c "while :; do sleep 10; done"
docker run -d --rm --name=host2 --net=wt --ip=172.20.11.2 --dns=172.20.0.2  dnsutils /bin/bash -c "while :; do sleep 10; done"
docker run --name=intranet --net=wt --ip=172.20.0.10 --dns=172.20.0.2 -d intranet
docker run --name database --network dmz-swarm -e MYSQL_ROOT_PASSWORD=dataisneeded -d database
docker network connect --ip=172.20.0.100 wt database

docker exec -d resolveur /etc/init.d/bind9  start
docker exec -d soa-public /etc/init.d/bind9  start
