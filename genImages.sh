#!/usr/bin/env bash

sudo docker build -t $DMALL_DOCKER_REGISTRY/$SLUG/config-server:$BUILD_NUMBER .
sudo docker tag $DMALL_DOCKER_REGISTRY/$SLUG/config-server:$BUILD_NUMBER $DMALL_DOCKER_REGISTRY/$SLUG/config-server:latest

sudo docker push $DMALL_DOCKER_REGISTRY/$SLUG/config-server:$BUILD_NUMBER
sudo docker push $DMALL_DOCKER_REGISTRY/$SLUG/config-server:latest
