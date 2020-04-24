docker network create --subnet=172.20.0.0/16 wt3

docker run -d --rm --name=resolveur --net=wt3 --ip=172.20.0.2 resolveur
docker run -d --rm --name=soa-public --net=wt3 --ip=172.20.0.3 soa-public


docker run -d --rm --name=host1 --net=wt3 --ip=172.20.10.2 --dns=172.20.0.2  dnsutils /bin/bash -c "while :; do sleep 10; done"
docker run -d --rm --name=host2 --net=wt3 --ip=172.20.11.2 --dns=172.20.0.2  dnsutils /bin/bash -c "while :; do sleep 10; done"

docker exec -d resolveur /etc/init.d/bind9  start
docker exec -d resolveur /etc/init.d/bind9  start
