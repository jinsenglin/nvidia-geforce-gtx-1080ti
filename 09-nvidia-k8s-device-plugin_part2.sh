#!/bin/bash

set -e

kubectl create -f https://raw.githubusercontent.com/NVIDIA/k8s-device-plugin/v1.10/nvidia-device-plugin.yml

# Make sure no error in the logs
# kubectl logs -n kube-system nvidia-device-plugin-daemonset-jvbvt

    # try modify the file /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
    # add Environment="KUBELET_EXTRA_ARGS=--feature-gates=DevicePlugins=true"
    # then
    # sudo systemctl daemon-reload
    # sudo systemctl restart kubelet
    #
    # See https://github.com/NVIDIA/k8s-device-plugin

    # try modify the file /etc/docker/daemon.json
    # add "default-runtime": "nvidia",
    # then
    # sudo systemctl daemon-reload
    # sudo systemctl restart docker
    # 
    # See https://github.com/NVIDIA/k8s-device-plugin/issues/47

<<OUTPUT
2018/07/09 07:16:49 Loading NVML
2018/07/09 07:16:49 Fetching devices.
2018/07/09 07:16:49 Starting FS watcher.
2018/07/09 07:16:49 Starting OS watcher.
2018/07/09 07:16:49 Starting to serve on /var/lib/kubelet/device-plugins/nvidia.sock
2018/07/09 07:16:49 Registered device plugin with Kubelet
2018/07/09 07:17:07 inotify: /var/lib/kubelet/device-plugins/kubelet.sock created, restarting.
2018/07/09 07:17:07 Starting to serve on /var/lib/kubelet/device-plugins/nvidia.sock
2018/07/09 07:17:07 Registered device plugin with Kubelet
OUTPUT
