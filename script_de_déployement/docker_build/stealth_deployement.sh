 #!/bin/bash

docker network create --subnet=172.20.0.0/16 woody-toys

docker run -d --rm --name=dns-server --net=woody-toys --ip=172.20.0.3 stealth_bind
docker run -d --rm --name=host1 --net=woody-toys --ip=172.20.10.1 --dns=172.20.0.3  host-ubuntu /bin/bash -c "while :; do sleep 10; done"
docker run -d --rm --name=host2 --net=woody-toys --ip=172.20.10.2 --dns=172.20.0.3  host-ubuntu /bin/bash -c "while :; do sleep 10; done"

docker exec -d dns-server /etc/init.d/bind9  start
