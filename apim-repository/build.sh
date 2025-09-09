#!/bin/bash

CONTAINER_NAME=wso2am
IMAGE_NAME=wso2am-local:4.4.0

# Stop and remove old container if exists
docker stop $CONTAINER_NAME 2>/dev/null || true
docker rm $CONTAINER_NAME 2>/dev/null || true

# Remove old image if exists
docker rmi $IMAGE_NAME 2>/dev/null || true

# Build new image
docker build -t $IMAGE_NAME .

echo "Build complete: $IMAGE_NAME"