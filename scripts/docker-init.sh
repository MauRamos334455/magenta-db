#!/bin/bash

# Stop the container
docker stop magestic

# Delete previous container
docker rm magestic

# Create our container
docker pull postgres

docker run -e POSTGRES_PASSWORD=postgres -d --name magestic -p 5432:5432 postgres

# Copy this directory everytime that exists changes in the files 
# and for the first time.
docker cp ../magestic-db magestic:/tmp/

# start container
docker start magestic

# Access to psql in the container
docker exec -it -u postgres -w /tmp/magestic-db magestic psql

# Don't forget to change user to magesticd on psql if is not your first time
# \c magesticd magesticd