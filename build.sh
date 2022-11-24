#! /bin/bash

sudo -i bash -c portshaker -v

tree=default
jails=(znet13-1)

for jail in "${jails[@]}"; do
    # sudo poudriere bulk -f /usr/local/etc/poudriere.d/$jail.list -p $tree -j $jail -J 2
    sudo poudriere bulk -f d/$jail.list -p $tree -j $jail -J 2
done
