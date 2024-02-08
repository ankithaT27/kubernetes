# kubernetes

A Kubernetes cluster is a set of nodes that run containerized applications. 

A node is a physical or virtual machine on which we run our pods which Provides the compute resources (CPU, volumes, etc) to run containerized apps

Pods are the smallest deployable units of computing that you can create and manage in Kubernetes.

The API server is a component of the Kubernetes control plane that exposes the Kubernetes API.
Etcd is a Consistent and highly-available key value store used as Kubernetes' backing store for all cluster data.
Kube controller manager is a Node controller: Responsible for noticing and responding when nodes go down
kube scheduler  watches for newly created Pods with no assigned node, and selects a node for them to run on.
Kubelet process responsible for starting a pod with a container inside, makes sure container is running as expected.
kubeproxy is allow network communication to your Pods from network sessions inside or outside of your cluster.

Command used for yaml files:
kubectl apply -f filename.yaml

A Pod (as in a pod of whales or pea pod) is a group of one or more containers, with shared storage and network resources, and a specification for how to run the container

A ReplicaSet's purpose is to maintain a stable set of replica Pods running at any given time. As such, it is often used to guarantee the availability of a specified number of identical Pods.
