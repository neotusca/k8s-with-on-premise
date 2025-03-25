kubectl create -f https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/tigera-operator.yaml
wget https://raw.githubusercontent.com/projectcalico/calico/v3.29.1/manifests/custom-resources.yaml

sed -i 's/192\.168\.0\.0/10\.96\.0\.0/g' custom-resources.yaml
kubectl apply -f custom-resources.yaml

# get worker node commands to run to join additional nodes into cluster
kubectl get all -n calico-apiserver
kubectl get all -n tigera-operator
