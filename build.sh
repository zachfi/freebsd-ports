#! /bin/bash
#
set -x

#sudo -i bash -c portshaker -v

tree=default
jails=(pkg14-0)

for jail in "${jails[@]}"; do
    # sudo poudriere bulk -f /usr/local/etc/poudriere.d/$jail.list -p $tree -j $jail -J 2
    sudo poudriere bulk -f d/$jail.list -p $tree -j $jail -J 2 $@
    #poudriere options -f d/$jail.list -p $tree -j $jail $@
done
