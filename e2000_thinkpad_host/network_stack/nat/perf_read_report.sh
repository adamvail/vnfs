perf kvm --host --guest --guestmodules=`pwd`/guest.modules --guestkallsyms=`pwd`/guest.kallsyms report -i perf.data.guest --force
