#!/bin/bash

minikube start
minikube addons enable ingress
minikube addons enable metrics-server
kubectl apply -f mongo-secret.yml
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
helm install mongodb bitnami/mongodb -f values.yml
