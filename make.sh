#simple Minimum Linux initramfs and rootfs images shell script builder with networking support from official sources X86_64

#Step1: Download latest binary busybox from its official website.
wget https://busybox.net/downloads/binaries/1.31.0-defconfig-multiarch-musl/busybox-x86_64

#Step2: Download latest famous linux Kernel from ubuntu official website.
wget http://archive.ubuntu.com/ubuntu/dists/bionic-updates/main/installer-amd64/current/images/netboot/ubuntu-installer/amd64/linux

#Step3: Download latest famous linux distribution base archived file (Ubuntu 18.04 LTS) from its official website.
wget http://cdimage.ubuntu.com/ubuntu-base/releases/18.04/release/ubuntu-base-18.04.5-base-amd64.tar.gz

#Step4: Download linux modules installer package according to linux Kernel version and linux distribution version from its official website.
wget http://mirrors.kernel.org/ubuntu/pool/main/l/linux/linux-modules-4.15.0-112-generic_4.15.0-112.113_amd64.deb

#Step5: Make initramfs image!
install -Dm0755 busybox-x86_64 initramfs/bin/busybox
install -Dm0755 init.sh initramfs/init
cp rootfs.sh initramfs/
cd initramfs
find . | sort | cpio -o -H newc -R 0:0 | gzip -9 > ../initramfs.gz
cd ..

#Step6: Make rootfs on hard.img file (for virtual machines). Increase hard disk image size by changing 1G to 2G and more at last command.
mkdir ubunturootfs
tar -xf *ubuntu*base*.tar.gz -C ubunturootfs
install -Dm0755 busybox-x86_64 ubunturootfs/bin/busybox
cp *.deb ubunturootfs/root/
cp firstrun.sh ubunturootfs/root/
cp config.sh ubunturootfs/
mke2fs -L '' -N 0 -O ^64bit -d "ubunturootfs" -m 5 -r 1 -t ext2 "hard.img" 1G

#Step7: Create hard2.img for linux swap, You can increase it by changing 512MB to 1GB and more.
qemu-img create -f raw hard2.img 512M

#Step8: Run qemu ...
echo 
echo Run bash qemu.sh
echo 
echo If make fail then run bash remake.sh
echo 
echo 
