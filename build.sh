#!/bin/bash

# exit on errors
set -e

cd /compile/helm
make
mv /usr/local /usr/local.org
make install
tar czf /compile/usr-local-helm.tar.gz /usr/local
rm -rf /usr/loca
mv /usr/local.org /usr/local
