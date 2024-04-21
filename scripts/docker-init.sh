#!/bin/bash

CONTAINER="magenta-db"
PG_PASSWORD="postgres"
HOST_PORT="5432"
CONTAINER_PORT="5432"

echo Stopping the container...
docker stop ${CONTAINER}

echo Dropping previous container...
docker rm ${CONTAINER}

echo Creating new container...
docker run -e POSTGRES_PASSWORD=${PG_PASSWORD} -d --name ${CONTAINER} -p ${HOST_PORT}:${CONTAINER_PORT} -v ${PWD}/../source:/tmp/source postgres:latest

echo Starting container...
docker start ${CONTAINER}

sleep 3

echo Executing container...
docker exec -it -u postgres -w /tmp/source ${CONTAINER} psql

# Don't forget to change user to magenta on psql if is not your first time
# \c magenta magenta
