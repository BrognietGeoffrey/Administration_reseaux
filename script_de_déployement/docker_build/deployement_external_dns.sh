retour=$(docker network ls | grep dmz-swarm)



if [ "$retour" == '' ]; then
  #reseau dmz-warm not exist
  echo "veuillez créer tout d'abord le réseau swarm 'dmz-swarm'!"
  docker network create --driver=overlay --attachable dmz-swarm
fi

docker run -d --rm --name=soa-public --net=dmz-swarm --dns=127.0.0.1 --publish=51.178.41.115:53:53/udp soa-public
