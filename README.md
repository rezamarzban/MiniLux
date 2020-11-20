# MiniLux
simple Minimum Linux shell script initramfs and rootfs images builder with networking support from official sources X86_64

A simple and fast powerful AMD64/Intel 64bit linux on arm64/armhf Android phones and Raspberries pi 1,2,3,4,... ; Bring powerful X86_64 computer processes to arm64/armhf devices with it.

MiniLux, Install latest famous official linux distribution only in one minute!

MiniLux, Very fast making from 40MB official downloaded sources only in one minute. Very fast booting only in less than one minute.

minimum system requirements for MiniLux:

CPU: pentium II

RAM: 64MB

Making images and launching QEMU virtual machine:

Education films for MiniLux are here:

https://drive.google.com/drive/folders/1bFqMWRk9mZFgaeH01mOWUFxZnz7NMOks?usp=sharing

1- Watch A_git_clone.mp4 & B_bash_make.mp4 films: First you need a working internet connection, After git cloning the project run "bash make.sh" in the project directory if you installed wget. After running it, you should have "initramfs.gz" and "disk.img" files in the project directory. If runing "bash make.sh" fail to making initramfs and rootfs files check the problem then run "bash remake.sh" (without again sources downloading).

2- Watch C_bash_qemu.mp4 film: Just run "bash qemu.sh" if you installed qemu-system-X86_64.

3- Watch D_sh_rootfs.mp4 film: While virtual machine has been launched, It will boot to RAM filesystem mode. Login to it with username "root" and no password. Then run "sh /rootfs.sh" to mounting real root filesystem.

4- Watch E_bash_config.mp4 film: while real root filesystem has been launched run "bash /config.sh" to configuring system and network. At first time it takes more time to complete because of installing linux modules.

5- Watch F_ping_google.mp4 film: Run "busybox ping google.com" and enjoy! Press Ctrl+c to breaking the process.

6- For exit run "exit" at real root filesystem mode. For quit run "busybox reboot" at real filesystem mode or run "reboot" at RAM filesystem mode.

7- Pickup the "linux", "initramfs.gz", "hard.img" and "qemu.sh" files from project directory. Everytime that you want to boot to real root filesystem follow the number 2,3 and 4 here instructions.

