#!/usr/bin/env python

import time, os, sys

base = '/home/rdj/mnt/nfs'

def hdd_read(fname):
	os.system('echo 3 > /proc/sys/vm/drop_caches')
	print 'Copying %s...' % fname
	start = time.time()
	os.system('cat %s > /dev/null' % fname)
	end = time.time()
	print 'time=%f' % (end - start)

hdd_read(os.path.join(base, sys.argv[1]))
