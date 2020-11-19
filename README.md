# MiniLux
simple Minimum Linux initramfs and rootfs images shell script builder with networking support from official sources X86_64

A simple and fast powerful AMD/Intel 64bit linux on your arm64/armhf Android phone or Raspberry pi 1,2,3,4; Bring powerful X86_64 computer processing to your arm64/armhf device with it.

minimum system requirements for MiniLux:

CPU: pentium II

RAM: 64MB

Making images and launching QEMU virtual machine:

1- Just run "bash make.sh"

2- Just run "bash qemu.sh" if you installed qemu-system-X86-64.

3- While virtual machine has been launched, It will boot to RAM filesystem mode. Login to it with username "root" and no password. Then run "sh /rootfs.sh" to mounting real root filesystem.

4- while real root filesystem has been launched run "bash /config.sh" to configuring system and network. At first time it takes more time to complete because of installing linux modules.

5- Run "busybox ping google.com" and enjoy! Ctrl+c for escaping.

6- For exit run "exit" at real root filesystem mode. For quit run "busybox reboot" at real filesystem mode or run "reboot" at RAM filesystem mode.

