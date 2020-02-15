#!/bin/bash

sudo apt update
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible git -y
git clone https://github.com/logandonley/laptop-setup.git
cd laptop-setup
ansible-playbook -i hosts setup_laptop.yaml