#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=anthonyabeo/ml-uservice

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-uservice \
        --image=docker.io/anthonyabeo/ml-uservice \
        --labels="ver=1,app=ml-uservice,env=test"

sleep 60
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-uservice 8080:80
