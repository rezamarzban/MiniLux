
#Config ... 
mount -t proc proc /proc
mount -t sysfs sys /sys
mount -t tmpfs tmpfs /run
busybox mdev -s
mkswap /dev/sdb
swapon /dev/sdb
bash /root/firstrun.sh
echo nameserver 10.0.2.3>/etc/resolv.conf
busybox modprobe e1000
busybox ifconfig eth0 10.0.2.15
busybox route add default gw 10.0.2.2
