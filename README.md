# MiniLux-64bit
simple Minimum Linux initramfs and rootfs images builder shell script with Windows 64bit, OpenGL and network support from official x64 sources

MiniLux, Building and launching linux from 40MB latest official sources and booting just in one minute!

MiniLux, Linux x64 on ARM devices (Android phones and tablets, Raspberries Pi 1,2,3,...).

MiniLux, Quick way to Windows x64 XP, 7, 8, ... .

Training films for each MiniLux making and installing commands are here:

https://drive.google.com/drive/folders/1XGZbKjzd_A4GlK8YF_x0knG5s046KeF7?usp=sharing

Install required packages by running below commands at Ubuntu shell:

sudo apt-get update

sudo apt install wget cpio tar e2fsprogs qemu-utils qemu-system-x86 git

Also run below command if "install" command is not exist at Ubuntu:

sudo apt install r-base-core

Making and launching instruction:

1- Run "git clone https://github.com/marzban2030/MiniLux".

2- Run "bash make.sh" in the project directory. Run "bash remake.sh" (Remake without again sources downloading) if running make.sh failed.

3- Run "bash qemu.sh". It use qemu-system-x86_64 command, So install its package in the host OS before everything.

4- Enter to the root RAM filesystem mode with username "root" and no password.

5- Run "sh /rootfs.sh" in the RAM filesystem mode to changing to real root filesystem mode.

6- Run "bash /config.sh" in the real root filesystem mode at every boot to configuring the system and network. It takes more time to be completed at first run. If you see an error about network please change "linux-modules-x.xx.x-xxx*generic*.deb" package download URL to the correct version at "make.sh" file manually (corresponding to the downloaded latest Linux kernel version and CPU architecture, For example if downloaded latest Linux kernel version is 4.15.0-156 find Linux module generic deb package 4.15.0-156* from internet which is similar version), Then delete everything and do a clean install again. In other words MiniLux uses latest official Linux kernel for Ubuntu 18.04 distribution, So manually change the Linux modules download URL at "make.sh" to the latest version if you see an error about network configuration at MiniLux real root file system mode.

Watch successful run clip after last make.sh change at June 2022:
https://drive.google.com/file/d/18xapz-1pRv_gz27vEcQM2gaLR4AsecID/view?usp=sharing

7- Run "bash /OpenGL.sh" in the real root filesystem mode to installing OpenGL and GLX if you need these.

8- Run "apt install wine-stable" in the real root filesystem mode to installing window in linux if you need this! Do not forget: A- Increase hard.img size from 1G to 2G in the make.sh and remake.sh files before making images. B- apt should be updated by running "apt-get update" in real root filesystem mode before running this command.

9- Run "busybox reboot" in the real root filesystem mode to exiting.
