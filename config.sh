
#Config ... 
bash /root/firstrun.sh
busybox mount -t proc proc /proc
busybox mount -t sysfs sys /sys
busybox mdev -s
echo nameserver 10.0.2.3>/etc/resolv.conf
busybox modprobe e1000
busybox ifconfig eth0 10.0.2.15
busybox route add default gw 10.0.2.2
