docker build -t b2b websites/b2b/.
docker build -t b2b websites/database/.
docker build -t b2b websites/intranet/.
docker build -t b2b websites/www/.

docker run --name=b2b --net=dmz-swarm -p 3300:8080 -d b2b
docker run --name=b2b --net=dmz-swarm -d database
docker run --name=b2b --net=dmz-swarm -p 3400:8080 -d www
