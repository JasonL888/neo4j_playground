#!/bin/bash
# @credit https://stackoverflow.com/users/270958/madsonic
#Open Docker, only if is not running
if (! docker stats --no-stream ); then
  # On Mac OS this would be the terminal command to launch Docker
  open /Applications/Docker.app
 #Wait until Docker daemon is running and has completed initialisation
while (! docker stats --no-stream ); do
  # Docker takes a few seconds to initialize
  echo "Waiting for Docker to launch..."
  sleep 10
done
fi

docker run \
    --name testneo4j \
    -p7474:7474 -p7687:7687 \
    -d \
    -v $PWD/data:/data \
    -v $PWD/logs:/logs \
    -v $PWD/import:/var/lib/neo4j/import \
    -v $PWD/plugins:/plugins \
    --env NEO4J_AUTH=neo4j/test \
    --env NEO4JLABS_PLUGINS='["apoc","graph-data-science"]' \
    --rm \
    neo4j:latest
