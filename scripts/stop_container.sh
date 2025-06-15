#!/bin/bash
set -e

# Get container IDs (skipping the header)
containerid=$(docker ps | awk 'NR>1 {print $1}')

# Remove containers if found
if [ -n "$containerid" ]; then
  docker rm -f $containerid
  echo "Stopped and removed: $containerid"
else
  echo "No running containers."
fi
