#!/bin/bash

docker pull postgres

docker run -e POSTGRES_PASSWORD=postgres \
  -d \
  --name magesticd \
  -p 5432:5432 \
  postgres


docker cp ../magesticd-db magesticd:/tmp/

docker exec -it bash
