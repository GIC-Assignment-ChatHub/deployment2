#!/bin/bash
source load_env.sh

if [ -z "$NAMESPACE" ]; then
    echo "NAMESPACE is not set (check .env file)"
    exit 1
fi
if [ -z "$SRC" ]; then
    echo "SRC is not set (check .env file)"
    exit 1
fi

if [ -z "$1" ]; then
    echo "Usage: $0 <website-pod>"
    exit 1
fi

# Copy website files to pod
for file in $(ls $SRC/website); do
    kubectl cp -n $NAMESPACE ../src/website/$file $1:/usr/share/nginx/html
done