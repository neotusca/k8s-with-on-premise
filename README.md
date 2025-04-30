# k8s-with-on-premise


# Directory Structure & Description
```
.
├── common-node                     - apply on master-node & worker-node
│   ├── 00.install-cri.sh            - install container-runtime-interface (containerd)
│   ├── 01.install-kubeutil.sh       - install k8s-utils (kubeadm, kubectl, kubelet)
│   ├── 02.config-cgroupdriver.sh    - configure cgroup-driver (based on Ubuntu 22.04)
│   └── 03.config-etc.sh             - configure enable ip-forward (system parameter)
├── master-node                     - apply on master-node only
│   ├── 04.install-kubernetes.sh     - install kubernetes (by kubeadm)
│   ├── 05.config-kubectl.sh         - configure kube-config
│   ├── 11.install-calico-cni.sh     - install container-network-interface (calico)
│   └── 21.install-k8sutil.sh        - install kubernetes-tools (k9s, helm and Option etc)
└── README.md
```

# Pre-requirement
- Node >= 2 (master & worker)
- OS on Node : Ubuntu 22.04 Server
- Network cidr decision
  - Node cidr : ip-range for your Node's NIC
  - Pod cidr : ip-range for Pod's ip on your k8s (100.64.0.0/16 by master-node/04.k8s-install.sh )
  - Service cidr : ip-range for ip of Service objects on your k8s  (10.69.0.0/16 by master-node/04.k8s-install.sh)

