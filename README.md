# STATUS

* 00-eth0.sh
* 01-selinux.sh
* 02-firewalld.sh
* 03-apt.sh
* 04-nvidia-gpu-driver_part1
* 05-nvidia-smi.sh
* 06-nvidia-cuda-toolkit
* 07-nvidia-cudnn-library
* 08-nvidia-docker
* 09-nvidia-k8s-device-plugin
* 10-kubeflow.sh

# IPMI WEB CONSOLE

n/a

# SSH LOGIN

n/a

# BASE OS

* Ubuntu 16.04.3

# DOWNLOAD FILES

* File: NVIDIA-Linux-x86_64-390.67.run
  * Size: 78M
  * http://www.nvidia.com.tw/Download/Find.aspx?lang=tw
* File: cuda-repo-ubuntu1604-9-2-local_9.2.88-1_amd64.deb
  * Size: 1.2G 
  * https://developer.nvidia.com/cuda-downloads
  * Related Files
      * cuda-repo-ubuntu1604-9-2-local-cublas-update-1_1.0-1_amd64.deb 94M
* File: cudnn-9.2-linux-x64-v7.1.tgz
  * Size: 402M
  * https://developer.nvidia.com/cudnn (Need login)
  * Related Files
      * libcudnn7_7.1.4.18-1+cuda9.2_amd64.deb 124M
      * libcudnn7-dev_7.1.4.18-1+cuda9.2_amd64.deb 116M
      * libcudnn7-doc_7.1.4.18-1+cuda9.2_amd64.deb 4.3M

# DO AGAIN AFTER REBOOT

* 06-nvidia-cuda-toolkit_part2.sh
