#! /bin/bash

sudo -i bash -c portshaker -v

tree=default
jails=(larch13 larch12)

for jail in "${jails[@]}"; do
    sudo poudriere bulk -f /usr/local/etc/poudriere.d/$jail.list -p $tree -j $jail
done
