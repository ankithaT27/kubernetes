Role based access control on K8 clusters
Define access based on roles
This access not only is for users but also for resouces, eg: does pod has access to a config map
Kubernetes RBAC is a key security control to ensure that cluster users and workloads/service accounts have only the access to resources required to execute their roles.
k8 offload the user mgmt to external identity provider (DDAP,SS0 everytging is supported by k8)
eg: if you are in aws use IAM to login to k8
Every resource has also a service account attached to it

Steps:
Create a role - user needs to access to a pod within this namepspace
role binding: we atttach this role to user (very similar to IAM policies)

