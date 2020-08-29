

setk8sns(){
  ns=$1
  kubectl config set-context $(kubectl config current-context) --namespace=$ns
}


# EXAM TIPS. IMPERATIVE COMMANDS 

# Generate a pod spec. 
kubectl run nginx --image=nginx  --dry-run=client -o yaml

# Generate a deployment spec
kubectl create deployment --image=nginx nginx --dry-run=client -o yaml

# Scale deployment to 3 replicas
kubectl scale deployment nginx --replicas 3

# Generate service
kubectl create service clusterip redis --tcp=6379:6379 --dry-run=client -o yaml

# create service and expose via nodeport.
kubectl create service nodeport nginx --tcp=80:80 --node-port=30080 --dry-run=client -o yaml

# create pod and expose port
kubectl run --image=nginx custom-nginx --port=8080
kubectl expose po custom-nginx --port 8080

# another example of pod expose. 
kubectl run --image=httpd:alpine httpd --port=80
kubectl expose po httpd --type=ClusterIP --port=80 --target-port=80 # creates service.



