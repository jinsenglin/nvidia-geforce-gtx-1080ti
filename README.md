# STATUS

* 00-ens11f0.sh [built-in]
* 01-apparmor.sh [ok]
* 02-ufw.sh [ok]
* 03-apt.sh [ok]
* 04-nvidia-gpu-driver [built-in]
* 05-nvidia-smi.sh [ok]
* 06-nvidia-cuda-toolkit [ok]
* 07-nvidia-cudnn-library [ok]
* 08-nvidia-docker [ok]
* 09-nvidia-k8s-device-plugin [ok]
* 10-kubeflow.sh [ok]

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
