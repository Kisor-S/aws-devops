#!/bin/bash
set -e

# Use full path to docker binary
DOCKER_BIN=$(which docker)

# Get running container IDs
containerid=$($DOCKER_BIN ps -q)

# Stop and remove containers if any are running
if [ -n "$containerid" ]; then
  $DOCKER_BIN rm -f $containerid
  echo "Stopped and removed running container(s): $containerid"
else
  echo "No running containers found."
fi
