#!/bin/bash

# INSTALLATION GUIDE
# * https://v1-10.docs.kubernetes.io/docs/tasks/tools/install-kubeadm/
# * https://v1-10.docs.kubernetes.io/docs/setup/independent/create-cluster-kubeadm/

# SWAP IS ALREADY OFF

# Installing kubeadm, kubelet and kubectl
sudo apt-get update && apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update

    # latest version
    # sudo apt-get install -y kubelet kubeadm kubectl

    # specific version
    sudo apt-cache madison kubelet
    sudo apt-get install -y kubelet=1.10.2-00 kubeadm=1.10.2-00 kubectl=1.10.2-00

# Configure cgroup driver used by kubelet on Master Node
# docker info | grep -i cgroup
# cat /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
# sed -i "s/cgroup-driver=systemd/cgroup-driver=cgroupfs/g" /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
# systemctl daemon-reload
# systemctl restart kubelet

#
kubeadm init --pod-network-cidr=10.244.0.0/16

<<OUTPUT
Your Kubernetes master has initialized successfully!

To start using your cluster, you need to run the following as a regular user:

  mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config

You should now deploy a pod network to the cluster.
Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
  https://kubernetes.io/docs/concepts/cluster-administration/addons/

You can now join any number of machines by running the following on each node
as root:

  kubeadm join 10.4.0.146:6443 --token sqil2j.5yaglg1b0hriud63 --discovery-token-ca-cert-hash sha256:7429e0e70a7bc4b74226ac2e4264239c1e8d78d4e381f02aa053d7be8ee20ffa
OUTPUT

#
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf

# Make sure the following value is 1
# cat /proc/sys/net/bridge/bridge-nf-call-iptables

# Installing a pod network add-on
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/v0.10.0/Documentation/kube-flannel.yml

# If you want to be able to schedule pods on the master, e.g. for a single-machine Kubernetes cluster for development, run:
kubectl taint nodes --all node-role.kubernetes.io/master-

#
kubectl get node
kubectl get po -n kube-system
