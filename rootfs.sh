
#Step1: Mount hard drive. Maybe you need change /dev/sda to: /dev/sda1 or /dev/hda or /dev/hda1 or so on.
mount -t ext2 /dev/sda /root

#Step2: Change root to hard drive and launch the real file system.
chroot /root /bin/bash
