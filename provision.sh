#!/usr/bin/env bash

# Head to copied Ansible files
cd /home/vagrant/ops/ansible

# Provision with Ansible
ansible-playbook -s \
                 -i ./hosts \
                 ./config.yml