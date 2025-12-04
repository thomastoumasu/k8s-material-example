sh ./bin/bash/clear.sh  

# first manual deployment
k3d cluster create -a 2
# see config file
k3d kubeconfig get k3s-default
# see cluster info
kubectl cluster-info
# k3d cluster stop
# k3d cluster start
# k3d cluster delete
# deploy, thus creating a pod resource and a deployment resource
kubectl create deployment hashgenerator-dep --image=jakousa/dwk-app1 
kubectl get pods
kubectl get pods -o=name
kubectl get deployments
# wait for pod to start, then see the logs
# kubectl logs -f pod/hashgenerator-dep-54ddc5f49c-jtnwr