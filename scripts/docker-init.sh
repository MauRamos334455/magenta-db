#!/bin/bash

CONTAINER="magestic-db"
PG_PASSWORD="postgres"
HOST_PORT="5432"
CONTAINER_PORT="5432"

echo Stopping the container...
docker stop magestic

echo Dropping previous container...
docker rm magestic

echo Creating new container...
docker run -e POSTGRES_PASSWORD=${PG_PASSWORD} -d --name ${CONTAINER} -p ${HOST_PORT}:${CONTAINER_PORT} -v ${PWD}/../source:/tmp/source postgres:latest

echo Starting container...
docker start magestic

sleep 3

echo Executing container...
docker exec -it -u postgres -w /tmp/magestic-db magestic psql

# Don't forget to change user to magesticd on psql if is not your first time
# \c magesticd magesticd