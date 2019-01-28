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

assert 'svn_base_url' in data.keys()
assert 'ports' in data.keys()
assert isinstance(data['ports'], list)

base_url = data['svn_base_url']

print(data)

for port in data['ports']:
    port_url = '%s/%s' % (base_url, port)
    if not os.path.isdir(port):
        cmd = 'svn co %s %s' % (port_url, port)
    else:
        cmd = 'svn up %s' % port

    subprocess.run(cmd.split())
