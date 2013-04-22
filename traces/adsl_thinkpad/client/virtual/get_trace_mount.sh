#!/bin/bash

tcpdump -vvnnXSs 1536 -i eth0 -w client_thinkpad_qemu_to_server_adsl_mount.pcap &
mount -t nfs -o proto=tcp,port=2049,noac adsl-18:/ mnt

sleep 5
umount mnt
sleep 5
killall tcpdump
echo 3 > /proc/sys/vm/drop_caches
