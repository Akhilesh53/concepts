**Deploy a Pod**

kubectl run [pod name] --image [image name] 

**Deploy a pod from yaml file**

kubectl create -f [yaml file name]
kubectl apply -f [yaml file name]

**Delete a pod**

kubectl delete pod [pod name]

**Get All Pods**

kubectl get pods
kubectl get pods -o wide 

**get pod details**

kubectl describe pod [pod name]

**Get all replication controller**

kubectl get replicationcontroller

**Delete replication controller**

kubectl delete replicationcontroller [replication controller name]

**Get all replicaset**

kubectl get replicaset

**Delete replicaset**

kubectl delete replicaset [replicaset name]

**To increase the scale of the pods use the following commands**
 
 kubectl replace -f [yaml file]

 kubectl scale --replicas=6 -f [yaml file]

 kubectl scale --replicas=6 [type replicaset] [replicaset_name] 

**Edit config file directly on server**

kubectl edit [type replicaset] [name replicaset_name]



