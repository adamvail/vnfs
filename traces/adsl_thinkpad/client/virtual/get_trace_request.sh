#!/bin/bash

mount -t nfs -o proto=tcp,port=2049,noac adsl-18:/ mnt

tcpdump -vvnnXSs 1536 -i eth0 -w client_thinkpad_qemu_to_server_adsl_request.pcap &
ls mnt
ls mnt/nfs
cat mnt/nfs/test1

sleep 5
killall tcpdump

umount mnt
echo 3 > /proc/sys/vm/drop_caches
