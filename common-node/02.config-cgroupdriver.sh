sudo containerd config default | sed 's/SystemdCgroup = false/SystemdCgroup = true/' | sed 's/sandbox_image = "registry.k8s.io\/pause:3.6"/sandbox_image = "registry.k8s.io\/pause:3.10"/' | sudo tee /etc/containerd/config.toml


echo grep -i systemd /etc/containerd/config.toml
grep -i systemd /etc/containerd/config.toml

echo grep -i sandbox /etc/containerd/config.toml
grep -i sandbox /etc/containerd/config.toml


sudo systemctl restart containerd
