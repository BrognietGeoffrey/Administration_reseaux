 #!/bin/bash

docker network create --subnet=173.20.0.0/16 woody-toys

docker run -d --rm --name=dns-server --net=woody-toys --ip=173.20.0.2 diomenios/administration_reseau:bind9
docker run -d --rm --name=host1 --net=woody-toys --ip=173.20.0.3 --dns=173.20.0.2  diomenios/administration_reseau:host-ubuntu /bin/bash -c "while :; do sleep 10; done"
docker run -d --rm --name=host2 --net=woody-toys --ip=173.20.0.4 --dns=173.20.0.2  diomenios/administration_reseau:host-ubuntu /bin/bash -c "while :; do sleep 10; done"

docker exec -d dns-server /etc/init.d/bind9  start
