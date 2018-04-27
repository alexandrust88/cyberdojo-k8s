#/bin/bash

set -x

action=create
# persistentVolumeClaim
for file in *persistentvolumeclaim.yaml
do
    echo NOT CREATING kubectl $action -f $file
done


kubectl create -f starter-deployment.yaml
kubectl create -f starter-service.yaml
kubectl create -f web-deployment.yaml
kubectl create -f web-service.yaml
kubectl create -f nginx-deployment.yaml
kubectl create -f nginx-service.yaml
kubectl create -f storer-deployment.yaml
kubectl create -f storer-service.yaml
kubectl create -f runner-stateless-deployment.yaml
kubectl create -f runner-stateless-service.yaml
kubectl create -f differ-deployment.yaml
kubectl create -f differ-service.yaml
kubectl create -f zipper-deployment.yaml
kubectl create -f zipper-service.yaml

# Monitoring
kubectl create -f prometheus-deployment.yaml
kubectl create -f prometheus-service.yaml

kubectl create -f grafana-data-pvc.yaml
kubectl create -f grafana-deployment.yaml
kubectl create -f grafana-service.yaml
