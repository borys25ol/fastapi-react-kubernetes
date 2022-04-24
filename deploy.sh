#!/bin/bash

echo "Creating the volume..."
kubectl apply -f ./kubernetes/persistent-volume.yml
kubectl apply -f ./kubernetes/persistent-volume-claim.yml

echo "Creating the database credentials..."
kubectl apply -f ./kubernetes/postgres-secret.yml

echo "Creating the api server credentials..."
kubectl apply -f ./kubernetes/fastapi-secret.yml

echo "Creating the api server credentials..."
kubectl apply -f ./kubernetes/react-secret.yml

echo "Creating the Postgres deployment and service..."
kubectl apply -f ./kubernetes/postgres-deployment.yml
kubectl apply -f ./kubernetes/postgres-service.yml

echo "Creating the FastAPI deployment and service..."
kubectl apply -f ./kubernetes/fastapi-deployment.yml
kubectl apply -f ./kubernetes/fastapi-service.yml

echo "Creating the React deployment and service..."
kubectl apply -f ./kubernetes/react-deployment.yml
kubectl apply -f ./kubernetes/react-service.yml

echo "Adding the ingress..."
minikube addons enable ingress
kubectl apply -f ./kubernetes/minikube-ingress.yml
