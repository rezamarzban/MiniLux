
#Step1: Mount hard drive. Maybe you need change /dev/sda to: /dev/sda1 or /dev/hda or /dev/hda1 or so on.
mount -t ext2 /dev/sda /root

echo 
echo Welcome to MiniLux real root filesystem.
echo Run bash config.sh to configuring system and network.
echo 

#Step2: Change root to hard drive and launch the real filesystem.
chroot /root /bin/bash
