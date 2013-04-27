#!/bin/bash
perf kvm --host --guest --guestkallsyms=/home/rdj/e2000/network_stack/bridge/guest.kallsyms --guestmodules=/home/rdj/e2000/network_stack/bridge/guest.modules record -a
