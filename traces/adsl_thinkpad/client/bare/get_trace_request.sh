#!/bin/bash

mount -t nfs -o proto=tcp,port=2049,noac adsl-18:/ mnt

tcpdump -vvnnXSs 1536 -i wlan0 -w client_thinkpad_to_server_adsl_request_test1 &
ls mnt
ls mnt/nfs
cat mnt/nfs/test1

sleep 5 
killall tcpdump

umount mnt
echo 3 > /proc/sys/vm/drop_caches
