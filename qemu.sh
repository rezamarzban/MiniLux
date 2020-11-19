
#Run qemu. You can increase qemu virtual machine RAM size by changing 64M to 128M and more.
qemu-system-x86_64 -cpu max -smp $(nproc) -m 64M -kernel linux -initrd initramfs.gz -hda hard.img -net user -net nic -nographic -append "console=ttyS0" -no-reboot
