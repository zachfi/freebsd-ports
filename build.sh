#! /bin/bash

sudo -i bash -c portshaker -v

tree=default

for build in larch12; do
    sudo poudriere bulk -f /usr/local/etc/poudriere.d/$build.list -p $tree -j $build
done
