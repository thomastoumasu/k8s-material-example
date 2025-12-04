# emptyDir storage 
sh ./bin/bash/clear.sh  

k3d cluster create -p 8081:80@loadbalancer --agents 2

kubectl apply -f ./app3/manifests/deployment.yaml
kubectl apply -f ./app3/manifests/service.yaml
kubectl apply -f ./app3/manifests/ingress.yaml

# wait until available
curl localhost:8081