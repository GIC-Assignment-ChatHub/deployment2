#!/bin/bash
source load_env.sh

if [ -z "$DOCKER" ]; then
    echo "DOCKER is not set (check .env file)"
    exit 1
fi
if [ -z "$REGISTRY" ]; then
    echo "REGISTRY is not set (check .env file)"
    exit 1
fi

echo "--- Rsyslog: building image"
docker build -t $REGISTRY/rsyslog:latest -f $DOCKER/Dockerfile.rsyslog .
echo "--- Rsyslog: pushing to registry"
docker push $REGISTRY/rsyslog:latest

echo "--- Nginx: building image"
docker build -t $REGISTRY/nginx:latest -f $DOCKER/Dockerfile.nginx .
echo "--- Nginx: pushing to registry"
docker push $REGISTRY/nginx:latest

echo "--- Website: building image"
docker build -t $REGISTRY/website:latest -f $DOCKER/Dockerfile.website .
echo "--- Website: pushing to registry"
docker push $REGISTRY/website:latest

echo "--- Minio: building image"
docker build -t $REGISTRY/minio:latest -f $DOCKER/Dockerfile.minio .
echo "--- Minio: pushing to registry"
docker push $REGISTRY/minio:latest

echo "--- Mongo: building image"
docker build -t $REGISTRY/mongo:latest -f $DOCKER/Dockerfile.mongo .
echo "--- Mongo: pushing to registry"
docker push $REGISTRY/mongo:latest

echo "--- Redis: building image"
docker build -t $REGISTRY/redis:latest -f $DOCKER/Dockerfile.redis .
echo "--- Redis: pushing to registry"
docker push $REGISTRY/redis:latest

# TODO: add Tailchat once problem with building the image is fixed