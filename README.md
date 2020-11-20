# MiniLux
simple Minimum Linux shell script initramfs and rootfs images builder with networking support from official sources X86_64

A simple and fast powerful AMD/Intel 64bit linux on your arm64/armhf Android phone or Raspberry pi 1,2,3,4; Bring powerful X86_64 computer processing to your arm64/armhf device with it.

minimum system requirements for MiniLux:

CPU: pentium II

RAM: 64MB

Making images and launching QEMU virtual machine:

1- First you need a working internet connection, After git cloning the project run "bash make.sh" in the project directory. After running it, you should have "initramfs.gz" and "disk.img" files in the project directory. If runing "bash make.sh" fail to making initramfs and rootfs files check the problem then run "bash remake.sh" (without again sources downloading).

2- Just run "bash qemu.sh" if you installed qemu-system-X86-64.

3- While virtual machine has been launched, It will boot to RAM filesystem mode. Login to it with username "root" and no password. Then run "sh /rootfs.sh" to mounting real root filesystem.

4- while real root filesystem has been launched run "bash /config.sh" to configuring system and network. At first time it takes more time to complete because of installing linux modules.

5- Run "busybox ping google.com" and enjoy! Press Ctrl+c to breaking the process.

6- For exit run "exit" at real root filesystem mode. For quit run "busybox reboot" at real filesystem mode or run "reboot" at RAM filesystem mode.

