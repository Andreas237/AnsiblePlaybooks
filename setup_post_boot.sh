#!/bin/bash

# Install ansible and run the playbook specified in $1

sudo apt update -y

sudo apt upgrade -y

pip3 install ansible rauth django python-setuptools python-smbus i2c-tools

ansible-playbook $1
