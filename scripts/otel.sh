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

helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts
helm uninstall otel-collector -n $NAMESPACE
helm install otel-collector open-telemetry/opentelemetry-collector --values $K3S/otel.yaml -n $NAMESPACE