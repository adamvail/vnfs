#perf kvm --host --guest --guestkallsyms=`pwd`/guest.kallsyms  --guestmodules=`pwd`/guest.modules record -a -g
perf kvm --guest --guestkallsyms=`pwd`/guest.kallsyms  --guestmodules=`pwd`/guest.modules record -a -g
