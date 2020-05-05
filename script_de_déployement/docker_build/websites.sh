docker build -t b2b websites/b2b/.
docker build -t database websites/database/.
docker build -t www websites/www/.
docker build -t proxy websites/proxy/.

docker run --name=proxy --net=dmz-swarm -p 80:80 -d proxy
docker run --name=b2b --net=dmz-swarm -d b2b
docker run --name database --network dmz-swarm -e MYSQL_ROOT_PASSWORD=dataisneeded -d database
docker run --name=www --net=dmz-swarm -d www
