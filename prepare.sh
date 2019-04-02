#!/bin/bash

# exit on errors
set -e

MYARCH=`uname -m`

mkdir compile
cd compile
git clone https://github.com/mtytel/helm.git
cd helm
# this is the version i used this script last with
git checkout abdedd527e6e1cf86636f0f1e8a3e75b06ed166a
if [ -f ../../helm.$MYARCH.patch ]; then
  patch -p1 < ../../helm.$MYARCH.patch
fi
cd ..
cp ../build.sh .
