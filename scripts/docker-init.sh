#!/bin/bash

CONTAINER="magenta-db"
PG_PASSWORD="postgres"
HOST_PORT="5432"
CONTAINER_PORT="5432"
NETWORK="magenta-network"

echo Creating docker network...
docker network create ${NETWORK}

echo Stopping container...
docker stop ${CONTAINER}

echo Deleting previous container...
docker rm ${CONTAINER}

echo Creating new container...
docker run -e POSTGRES_PASSWORD=${PG_PASSWORD} -e POSTGRES_HOST_AUTH_METHOD=md5 -d --name ${CONTAINER} --network ${NETWORK} -p ${HOST_PORT}:${CONTAINER_PORT} -v ${PWD}/../source:/tmp/source postgres:latest

echo Starting container...
docker start ${CONTAINER}

sleep 3

echo Executing container...
docker exec -it -u postgres -w /tmp/source ${CONTAINER} psql

# Don't forget to change user to magenta on psql if is not your first time
# \c magenta magenta