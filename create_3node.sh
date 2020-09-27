#!/bin/bash

# Using Vagrant and cp-ansible to deploy Confluent Platform
# Locate the preferred template from the templates folder

# Launch a 1 node Confluent Platform instance using vagrant and cp-ansible
VAGRANT_VAGRANTFILE=Vagrantfile_3node TEMPLATE=3node.yml vagrant up
