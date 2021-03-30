#!/bin/bash

# Install ansible and run the playbook specified in $1

# update repos
sudo apt update -y

# upgrade installs
sudo apt upgrade -y

# install ansible
sudo apt install ansible -y

# run a playbook passed to this script
ansible-playbook $1
