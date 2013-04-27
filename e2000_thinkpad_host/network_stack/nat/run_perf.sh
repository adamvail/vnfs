#!/bin/bash
perf kvm --host --guest --guestkallsyms=/home/rdj/e2000/guest.kallsyms --guestmodules=/home/rdj/e2000/guest.modules record -a
