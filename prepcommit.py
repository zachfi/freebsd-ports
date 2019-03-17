#! /usr/bin/env python

import yaml
import sys
import os
import subprocess

conf = '.ports.yaml'

if not os.path.isfile(conf):
    print('Configuration file .ports.yaml is not present')
    sys.exit(1)

with open(conf, 'r') as f:
    data = yaml.load(f.read())

assert 'ports_dir' in data.keys()
assert 'dev_dir' in data.keys()
assert 'ports' in data.keys()
assert isinstance(data['ports'], list)

dev_dir = os.path.expanduser(data['dev_dir'])
ports_dir = os.path.expanduser(data['ports_dir'])

print("Updating ports checkout")
cmd = 'svn up %s' % ports_dir
subprocess.run(cmd.split())

for port in data['ports']:
    source_path = '%s/%s/' % (dev_dir, port)
    dest_path = '%s/%s/' % (ports_dir, port)

    cmd = 'rsync -aP --exclude=.svn/ %s %s' % (source_path, dest_path)

    subprocess.run(cmd.split())
