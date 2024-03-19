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

4 parts:metadata(name)
specification:what ware you creating,apiverion
thirs part: status(genearted by kubernetes alone)




commands:
kubectl api-resources | grep statefulset
A Pod (as in a pod of whales or pea pod) is a group of one or more containers, with shared storage and network resources, and a specification for how to run the container

A ReplicaSet's purpose is to maintain a stable set of replica Pods running at any given time. As such, it is often used to guarantee the availability of a specified number of identical Pods.

Labels are nothing more than custom key-value pairs that are attached to objects and are used to describe and manage different Kubernetes resources

A label selector is just a fancy name of the mechanism that enables the client/user to target (select) a set of objects by their labels. 


This Deployment configuration will spin-up 3 Pods (replicas: 3) and will monitor to make sure it always has 3 Pods alive. How will it target those Pods? By their app: nginx label. The same goes with the Service configuration that is targeting Pods with the label app: nginx. Any Pod without this label, will not be exposed through this Service (“my-service”). This is why you must configure labels correctly or Kubernetes will not work as you expect it to.


with namespaces we alos limit the usage of resources
services: access from all ns
configmap and secrets: no
node and volumes: cant be put in a ns
Namespaces: kubesystem (dont modify)
kubepublic(cluster info)
kube-node-lease(heartbeat)
default(we use this/we can also create new namespaces)
kubectl create namespaces


Services:
Default: Cluster IP
* there are 2 containers inside a pod which listening at 3000 and 9000
* pod has an ip whicb is given by the node from its rangei.e if you are creating a RS and you have 3 pods with IP 10.34.4.5, 10.34.4.6, 10.33,5.7 now this means 2 of the pods are in the same node which was given from its range 10.34.4.x
* The service is now assigned an IP of its own and works on a port again which gets requests from ingress

-->Clusterip: when the communication happens within the cluster
-->haeadless services--> send requests to 1 particular pod, eg: using database, since pod ip is needed for it. we can use the DNS LOOKUP for this purpose, set the cluster ip to none and the DNS LOOKUP wil return the pod ip rather than CIP.
-->nodeport-->requests comes to a single port always
