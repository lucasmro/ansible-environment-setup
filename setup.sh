#!/bin/bash
sudo apt-get install ansible -y
sudo cp ansible/hosts /etc/ansible/hosts
ansible-playbook ansible/main.yml
