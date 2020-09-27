#!/bin/bash

# Destroy the Vagrant images
# Launch a 1 node Confluent Platform instance using vagrant and cp-ansible
VAGRANT_VAGRANTFILE=Vagrantfile vagrant destroy -f
