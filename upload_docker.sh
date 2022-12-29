#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=anthonyabeo/ml-uservice

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=anthonyabeo
docker tag ml-uservice $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath