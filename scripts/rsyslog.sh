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

kubectl apply -f $K3S/rsyslog.yaml -n $NAMESPACE