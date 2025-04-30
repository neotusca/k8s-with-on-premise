NOW=`date +'%Y%m%d-%H%M-%Z'`

POD_CIDR=100.64.0.0/16
SVC_CIDR=10.96.0.0/16

sudo kubeadm init   --pod-network-cidr=${POD_CIDR}  \
                    --service-cidr=${SVC_CIDR}  \
                    1> kubeadm-init.$NOW.log 2> kubeadm-init.$NOW.err

tail -2 kubeadm-init.$NOW.log >  join-worker-node.sh
