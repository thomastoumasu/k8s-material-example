sh ./bin/bash/clear.sh  

# first deployment with file
k3d cluster create -a 2

kubectl apply -f ./app1/manifests/deployment.yaml

kubectl describe deployment hashgenerator-dep 

kubectl get pods

kubectl describe pod hashgenerator-dep-75bdcc94c-whwsm