# statefulset with redis storage 
sh ./bin/bash/clear.sh  

k3d cluster create -a 2

kubectl apply -f ./app5/manifests/statefulset.yaml
kubectl delete -f ./app5/manifests/statefulset.yaml

kubectl logs -f redis-ss-1 redisfiller
kubectl get pvc

kubectl apply -f ./app5/manifests/debug-pod.yaml
kubectl exec -it my-busybox -- ping redis-svc
kubectl exec -it my-busybox -- nslookup redis-svc

# kubectl exec -it my-busybox -- wget -qO - http://redis-svc