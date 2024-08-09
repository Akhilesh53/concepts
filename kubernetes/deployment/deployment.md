Deployment is higher level hierarchy object after replicaset. 

How deployment is being useful.

1) we need to deploy any such instances pod not only a single one.
2) whenever a new version of the code is deployed, it needs to be upgraded with latest code. 
upgradation cannot be done at one single shot, but we have to plan a rolling deployment (one after another)
3) If some error occus while upgrading, we need to rollback or undo changes.
4) Assume we have to scale or modify some env changes, we dont want to do changes at all level.
   First we do at some pods, then further.

The deployment provides us with the capability to upgrade the underlying instances seamlessly using rolling updates. Undo changes and pause and resume changes as required.

Yaml file remains same as replica set, only change is in kind.

----

*Handling of pods via deployment and replicaset*

----

A Deployment creates and manages a ReplicaSet that ensures a certain number of pods are running. However, the Deployment does not prevent external pods from being created, even with the same labels. These external pods are independent. 
A ReplicaSet manages any pod that matches its label selector. If you manually create a pod with labels that match a ReplicaSet, the ReplicaSet will immediately manage that pod and adjust the number of pods to match its desired replica count, often by deleting excess pods.