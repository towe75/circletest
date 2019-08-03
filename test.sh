#!/bin/bash 

set -o errexit

apt-get update || true

apt-get install -y liblxc1 lxc-dev lxc lxc-templates

lxc-ls -f

docker pull golang:1.12.7
docker ps -a
