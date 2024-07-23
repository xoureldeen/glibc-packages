#!/bin/bash

# Script that installs build-package.sh to compile glibc packages

BRANCH="master"

git clone --depth 1 -b ${BRANCH} --single-branch https://github.com/xoureldeen/termux-packages.git

for i in build-package.sh clean.sh packages x11-packages root-packages scripts; do
	rm -fr ./${i}
	cp -r ./termux-packages/${i} ./
done

rm -fr termux-packages
