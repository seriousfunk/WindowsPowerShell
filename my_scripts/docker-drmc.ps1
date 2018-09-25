docker stop $(docker ps -a -q)
docker container rm $(docker container ps -aq)
