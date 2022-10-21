#!/bin/bash

# Stop the container
docker stop magesticd

# Delete previous container
docker rm magesticd

# Create our container
docker pull postgres

docker run -e POSTGRES_PASSWORD=postgres -d --name magesticd -p 5432:5432 postgres

# Copy this directory everytime that exists changes in the files 
# and for the first time.
docker cp ../magesticd-db magesticd:/tmp/

# start container
docker start magesticd

# Access to psql in the container
docker exec -it -u postgres -w /tmp/magesticd-db magesticd psql

# Don't forget to change user to magesticd on psql if is not your first time
# \c magesticd magesticd