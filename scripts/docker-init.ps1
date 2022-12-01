$container = "magestic"
$pg_password = "postgres"
$host_port = 5432
$container_port = 5432

docker stop ${container}

# Delete previous container
docker rm ${container}

# Create our container
docker pull postgres

docker run -e POSTGRES_PASSWORD=${pg_password} -d --name ${container} -p ${host_port}:${container_port} postgres

# start container
docker start ${container}

# Copy this directory everytime that exists changes in the files 
# and for the first time.
docker cp ../source ${container}:/tmp/


# Access to psql in the container
docker exec -it -u postgres -w /tmp/source ${container} psql