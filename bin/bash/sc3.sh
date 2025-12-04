# nodeport service - to access app from outside
sh ./bin/bash/clear.sh  

k3d cluster create --port 8082:30080@agent:0 -p 8081:80@loadbalancer --agents 2

kubectl apply -f ./app2/manifests/deployment.yaml

kubectl apply -f ./app2/manifests/nodeport_service.yaml

# wait for pod to start
curl localhost:8082