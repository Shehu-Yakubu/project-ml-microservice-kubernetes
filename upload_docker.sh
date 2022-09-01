#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=shehyak/project-ml-microservice-kubernetes

# Step 2:  
# Authenticate & tag
docker login -u shehyak
docker tag project-ml-microservice-kubernetes ${dockerpath}
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push ${dockerpath}
