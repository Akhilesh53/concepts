The continers are encapsulated in kubernetes object called pods. 
A pod is the single instance of the application.
A pod is the smallest object that we can create in kubernetes.
Pods usually have 1-1 relationship with containers. 
A pod can have multiple containers but not usually of the same kind.




----

**Pods in YAML**

----

There are 4 main mandatory parts in kubernetes yaml file.
- apiVersion - version of the kubernetes api
   - pod: v1
   - service: v1
   - replicaset: apps/v1
   - deployment: apps/v1

- kind: the type of object we want to create 
  - pod, service, deployment, replicaset

- metadata: data about the object.

- spec: specification related to the object created like image name and all.