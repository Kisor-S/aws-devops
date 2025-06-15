#!/bin/bash
set -e

# Get running container IDs
containerid=$(docker ps -q)

# Stop and remove containers if any are running
if [ -n "$containerid" ]; then
  docker rm -f $containerid
  echo "Stopped and removed running container(s): $containerid"
else
  echo "No running containers found."
fi
