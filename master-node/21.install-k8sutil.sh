

## install k9s
#wget  https://github.com/derailed/k9s/releases/download/v0.40.10/k9s_linux_arm64.deb
#dpkg -i k9s_linux_arm64.deb -y


## install helm
#wget  https://get.helm.sh/helm-v3.16.0-linux-amd64.tar.gz
#tar xvfz helm-v3.16.0-linux-amd64.tar.gz
#cp  linux-amd64/helm /usr/bin/



## install helm
curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
sudo apt-get install apt-transport-https --yes
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm


## install k8s-dashboard by helm
helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
helm upgrade --install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard --create-namespace --namespace kubernetes-dashboard
