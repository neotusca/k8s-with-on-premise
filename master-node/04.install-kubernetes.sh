NOW=`date +'%Y%m%d-%H%M-%Z'`


sudo kubeadm init   --pod-network-cidr=100.64.0.0/16    1> kubeadm-init.$NOW.log 2> kubeadm-init.$NOW.err


tail -2  . kubeadm-init.$NOW.log >  ../join-worker-node.log
