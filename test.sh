#!/bin/bash 

set -o errexit

apt-get update || true

apt-get install -y liblxc1 lxc-dev lxc lxc-templates wget ca-certificates

lxc-ls -f

go version


cd /usr/local

ls -l

wget -O- https://storage.googleapis.com/golang/go1.12.7.linux-amd64.tar.gz| tar xfz -
ln -s /usr/local/go/bin/go /usr/bin/go

go version