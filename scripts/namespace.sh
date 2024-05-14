#!/bin/bash
source load_env.sh

if [ -z "$NAMESPACE" ]; then
    echo "NAMESPACE is not set (check .env file)"
    exit 1
fi

kubectl create namespace $NAMESPACE