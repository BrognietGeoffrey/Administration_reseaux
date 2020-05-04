docker build -t b2b websites/b2b/.
docker build -t database websites/database/.
docker build -t intranet websites/intranet/.
docker build -t www websites/www/.

docker run --name=b2b --net=dmz-swarm -p 3300:8080 -d b2b
docker run --name database --network dmz-swarm --ip 10.0.1.25 -e MYSQL_ROOT_PASSWORD=dataisneeded -d database
docker run --name=www --net=dmz-swarm -p 3400:8080 -d www
