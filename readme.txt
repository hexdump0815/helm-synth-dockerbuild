order of things:

requirement: docker installed and running, tested on ubuntu 18.04

docker-buildenv.sh
prepare.sh
buildenv.sh

then inside of the docker container:

/compile/build.sh

it will install helm and all its files into /usr/local and create a tar file out of it

# in case the helm icon is missing after a make install
update-icon-caches /usr/local/share/icons/*
