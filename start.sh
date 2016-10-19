#!/bin/sh
NAME=npm-proxy-cache
CONTAINER=`docker ps -a -q --filter=name=$NAME`
if [ "$CONTAINER" ]; then
	docker restart $CONTAINER
else
	docker run --name=$NAME -d --net=host -p 8080:8080 -v /opt/docker/npm-proxy-cache:/cache -t twogood/npm-proxy-cache
fi
