Container  + Orchestration

Container we have heard about the same in docker. 
The process of automatically scaling up/ down the number of containers based on load is called container orchestration.

Kubernetes is one such container orchestration technology. Docker Swarm is another.

----

**Kubernetes Architecture**

----

Node: A node is a machine where kubernetes is installed. 
Cluster: A cluster is a set of nodes grouped together.
Master: A master is the main node which stores all the info/ details related to all cluster nodes and is responsible to manage all its working.

----

** Components of kubernetes**

----

1) API Server: acts a frontend for the kubernets service.
2) etcd: is a distributed reliable key value based data store to store all the data used to manage cluster.
3) Scheduler: is responsible to schedule/ distribute the work/tasks amonfg child nodes.
4) Controllers: are the brain behind orchestration. They are responsible for noticing and responding if any nodes, service or endpoint goes down.
5) Container runtime: is the underlying software to run containers.
6) Kubelet: is the agent that runs on each node , to make sure containers are running on the node as expected.

----

**Imp Links**
 
----

https://kubernetes.io/docs/tasks/tools/install-kubectl-macos/
https://minikube.sigs.k8s.io/docs/start/?arch=%2Fmacos%2Farm64%2Fstable%2Fhomebrew

 