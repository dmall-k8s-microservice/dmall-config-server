#!/usr/bin/env bash

kubectl --kubeconfig=$KUBECTL_CONFIG_FILE delete -f config-server.yaml
kubectl --kubeconfig=$KUBECTL_CONFIG_FILE create -f config-server.yaml