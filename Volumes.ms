Uses:
One of the key benefits of using Persistent Volumes is their ability to decouple storage from individual pods. This decoupling allows for greater flexibility in managing pods
The data stored in a Persistent Volume remains intact even if a pod is deleted or rescheduled. Additionally, Persistent Volumes support various access modes, allowing multiple pods to read and write data simultaneously.
Solutions:
Instaed of having data on container level, have it at pod level
here we craete a volume

*****************************************************************************************************************************
EMPTY DIR
eg:
#pod LEVEL
volumes:
  name: mongovolume
  emptydir: {}

##inside container
    volumemounts:
       mountpath: /data/db
       name: mongovolume
The data is stored at /var/lib/kubelet/pods/podname/volumes/emotydir/nameofvolume

But the problem still exists here where data is stored at a single pod and also data is not shared bw pods
*****************************************************************************************************************************
HOST PATH

take volume out of pod, data is stored on node
#pod level

volumes:
    name: mongovolume
    hostpath:
      path: /data 
      
But this again doesnt solve the problem of multi node data persistance
****************************************************************************************************************************

Persistant volume:
created using yaml 

Now in deployment.yaml

volumes: 
  name: mongovolume
  persistantVolumeClaim:
    claimName: momgo-pvc



Access Modes
ReadOnlyMany(ROX) allows being mounted by multiple nodes in read-only mode.
ReadWriteOnce(RWO) allows being mounted by a single node in read-write mode.
ReadWriteMany(RWX) allows multiple nodes to be mounted in read-write mode.
