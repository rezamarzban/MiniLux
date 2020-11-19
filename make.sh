#Minimum Linux initramfs and rootfs images builder with networking support from official sources X86_64

#Step1: Download latest binary busybox from its official website.
wget https://busybox.net/downloads/binaries/1.31.0-defconfig-multiarch-musl/busybox-x86_64

#Step2: Download latest famous linux Kernel from ubuntu official website.
wget http://archive.ubuntu.com/ubuntu/dists/bionic-updates/main/installer-amd64/current/images/netboot/ubuntu-installer/amd64/linux

#Step3: Download latest famous linux distribution base archived file (Ubuntu 18.04 LTS) from its official website.
wget http://cdimage.ubuntu.com/ubuntu-base/releases/18.04/release/ubuntu-base-18.04.5-base-amd64.tar.gz
