#!/bin/bash
source load_env.sh

if [ -z "$K3S" ]; then
    echo "K3S is not set (check .env file)"
    exit 1
fi
if [ -z "$NAMESPACE" ]; then
    echo "NAMESPACE is not set (check .env file)"
    exit 1
fi

kubectl apply -f $K3S/minio/minio-secret.yaml -n $NAMESPACE
kubectl apply -f $K3S/minio/minio-headless.yaml -n $NAMESPACE
kubectl apply -f $K3S/minio/minio-stateful-deployment.yaml -n $NAMESPACE
kubectl apply -f $K3S/minio/minio-service.yaml -n $NAMESPACE