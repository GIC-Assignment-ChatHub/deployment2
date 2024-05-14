# GIC Deployment 1 - ChatHub

## Description

This repository contains the first deployment of ChatHub. It uses Docker and K3s to deploy the application services.

**Course:** Management of Computation Infrastructures (2023/2024).

## Contents

- `docker/`: Dockerfiles to build the Docker images.
- `k3s/`: Kubernetes manifests to deploy the application.
- `src/`: source code of some components of the application.
- `scripts/`: shell scripts to automate the build and deployment process.
    - Important: `cd` to the `scripts` directory before running the scripts.
    - The `.env` file contains the environment variables used in the scripts.
    - The `load-env.sh` script will load the environment variables.
        - It is called inside the scripts, there is no need to run it beforehand.
    - The `docker-all.sh` script will build and push all Docker images.
    - The `deploy-all.sh` script will deploy all services in Kubernetes.
        - Note: you can run each deployment script individually if needed (ingress, minio, mongo, namespace, redis, storage, tailchat, website).
    - The `website-content.sh` script will copy the website content, given the website pod ID as an argument.
    - The `mongo-config.md` contains the instructions to configure MongoDB in the deployment.
- `config`: configuration to access cluster in OpenLens.
- `hosts`: information you need to add in your `/etc/hosts` file, to be able to access the services.
- `report.pdf`: report regarding this first deployment, [click here](report.pdf) to check it out.
- `Vagrantfile`: configuration of the Vagrant VM.

## Authors

- Diogo Paiva, 103183
- Guilherme Antunes, 103600
- João Fonseca, 103154
