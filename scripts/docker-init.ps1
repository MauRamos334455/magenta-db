$container = "magenta-db"
$pg_password = "postgres"
$host_port = 5432
$container_port = 5432

Write-Output "Stopping the container..."
docker stop ${container}

Write-Output "Deleting previous container..."
docker rm ${container}

Write-Output "Creating our container..."
# Execute script inside scripts folder or change $PWD
docker run -e POSTGRES_PASSWORD=${pg_password} -d --name ${container} `
  -p ${host_port}:${container_port} `
  -v ${PWD}/source:/tmp/source postgres:latest

Write-Output "Starting container..."
docker start ${container}

# Copy this directory everytime that exists changes in the files 
# and for the first time.
Start-Sleep -Seconds 3

Write-Output "Executing container..."
docker exec -it -u postgres -w /tmp/source ${container} psql