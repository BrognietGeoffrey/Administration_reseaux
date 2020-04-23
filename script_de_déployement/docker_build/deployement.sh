docker network create --subnet=172.20.0.0/24 internal-services
docker network create --subnet=172.20.10.0/24 external-services
docker network create --subnet=172.30.0.0/16 woody-toys

docker run -d --rm --name=resolveur --net=woody-toys --ip=172.30.0.2 resolveur
docker run -d --rm --name=soa-local --net=internal-services --ip=172.20.0.2 soa-local
docker run -d --rm --name=soa-public --net=external-services --ip=172.20.10.2 soa-public


docker run -d --rm --name=host1 --net=woody-toys --ip=172.30.10.2 --dns=172.30.0.2  dnsutils /bin/bash -c "while :; do sleep 10; done"
docker run -d --rm --name=host2 --net=woody-toys --ip=172.30.11.2 --dns=172.30.0.2  dnsutils /bin/bash -c "while :; do sleep 10; done"

docker exec -d dns-server /etc/init.d/bind9  start
docker exec -d dns-server /etc/init.d/bind9  start
docker exec -d dns-server /etc/init.d/bind9  start
