Kubernetes is an open source container orchestration engine for automating deployment, scaling, and management of containerized applications. 

Minikube: lightweight impln of k8, creates a VM on you local machine

Kube-scheduler distributes and manages the workload on the worker nodes. It uses various policies to select the most suitable node for a pod based on factors such as resource requirements, node capacity, and pod affinity/anti-affinity. The kube-scheduler component is also responsible for binding the selected node to the pod and updating the Kubernetes API server with the updated information.

Kube-proxy is an important component of Kubernetes networking that helps ensure reliable and efficient communication between pods and services within the cluster.

The node in Kubernetes that keeps track of resource utilization is the kubelet. It runs on each worker node and is responsible for managing the state of the node, including starting and stopping pods, as well as monitoring their resource usage.

Pronounced as "ett-see-dee," it is written in Go programming language and used to coordinate distributed work and key-value pairs. It is an open-source distributed key-value store that holds and manages the critical information distributed systems need to keep running. It is built on the Raft consensus algorithm, which ensures datastore consistency across all the nodes.


The Ingress network manages external access to services in the cluster. Specifically, it enables the load balancing of traffic, termination of SSL/TLS, and virtual hosting for HTTP and HTTPS routes exposed from outside the cluster to services within it


Labels are any key-value pairs that are used to identify that pod. The pod gets its label through the deployment which is like a blueprint for the pod before the pod is created. The Selector matches the label. Labels and selectors are required, to make connections between deployment, pods, and services

A headless Service is a type of Kubernetes Service that does not allocate a cluster IP address. Instead, a headless Service uses DNS to expose the IP addresses of the Pods that are associated with the Service. This allows you to connect directly to the Pods, instead of going through a proxy.


resource request : add resources: requests sectiona nd add cpu and memory reqyirement
limits: add resources: limits sectiona nd add cpu and memory limit
when pod consumes say 2gb of memory and that is the limit, then the pod will be killed due to OOM error, but if CPU utilization is increased the cpu will throttle.

ideal would be set request to say 1 vcpu and limits need not be set as if any other pods require more cpu then it can be done without killing the other pods as min 1 cpu will always be there.
so istaed of mentioning everything seperately in each yaml file,w e can create a limit-range-cpu.yaml and limit-range-memory.yaml and this applies at namespace level.(this applies for each pod like how much cpu each pod should consume)

set resource quotas at namespace level to limit the usage at namespace level'- this applies togther to all resources


Daemon sets:
 DaemonSet ensures that all (or some) Nodes run a copy of a Pod. As nodes are added to the cluster, Pods are added to them. As nodes are removed from the cluster, those Pods are garbage collected. Deleting a DaemonSet will clean up the Pods it created.

Some typical uses of a DaemonSet are:

running a cluster storage daemon on every node
running a logs collection daemon on every node
running a node monitoring daemon on every node

lubectl get daemonsets
d kubectl get daemonsets --all-namespaces
kubectl describe daemonset kube-flannel-ds --namespace=kube-flannel

************************************************************************************************************************************************************************

Challenges faced:
Resource sharing-->resource quota, resource limits (requests and limits) this reduces the blast radius, pod leaking memory
