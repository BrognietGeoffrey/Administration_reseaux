docker network create --subnet=172.20.0.0/24 wt
docker network create --subnet=172.30.0.0/24 dmz

docker run -d --rm --name=resolveur --net=wt --ip=172.20.0.2 -p resolveur
docker run -d --rm --name=soa-public --net=dmz --ip=172.30.0.2 -p 22:22 soa-public


docker run -d --rm --name=host1 --net=wt --ip=172.20.10.2 --dns=172.20.0.2  dnsutils /bin/bash -c "while :; do sleep 10; done"
docker run -d --rm --name=host2 --net=wt --ip=172.20.11.2 --dns=172.20.0.2  dnsutils /bin/bash -c "while :; do sleep 10; done"

docker exec -d resolveur /etc/init.d/bind9  start
docker exec -d resolveur /etc/init.d/bind9  start
