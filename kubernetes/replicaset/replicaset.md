----

**why do we label our pods and objects in kubernetes**

----

There will be number of pods running on ecosystem. a replicaset need to manage few set of pods specified. to identify which pods to handle, we need to specify labels to the pods.

The sole purpose of replicaset is to make sure that specified number of pods are running at the same time in the node/ cluster.

Even if we create a pod outside the replicaset with same labels, 
- replicaset wont allow creation of more pods then replicas specified.
- replicaset will consider the same pod in itself, if number of pods are less then number specified.
 