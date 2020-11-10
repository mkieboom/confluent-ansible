# confluent-ansible

#### Disclaimer
Not for production use and not officially supported. For supported ansible scripts please visit: https://github.com/confluentinc/cp-ansible
Please note that deployment using these ansible scripts result in default passwords!

#### Pre-requisites
```
vagrant
Virtualbox, Hyper-V or any other vagrant supported providers as outlined at: https://www.vagrantup.com/docs/providers
```

##### Clone the project
```
git clone https://github.com/mkieboom/confluent-ansible
cd confluent-ansible
```

#### Modify the Vagrantfile to reflect your target environment
```
vi Vagrantfile
# replace ssh_public_key with your personal public key for easy accessing the deployed environments.
# configure the 'servers' array to reflect your target environment.
```

#### Pick or create an ansible yaml file from the templates folder
```
# Validate the ansible files in the templates folder and customise one to your needs
# Note: the ansible yaml file should match the servers array in the Vagrantfile
```

#### Launch vagrant to deploy the environment and run cp-ansible
```
# Grab the yml filename from the templates folder you would like to apply and specify it as the TEMPLATE
# For example, for a 1 node cluster without any security run:
VAGRANT_VAGRANTFILE=Vagrantfile_1node TEMPLATE=1node.yml vagrant up

# To run a 1 node environment with SASL SCRAM and mTLS run the following:
VAGRANT_VAGRANTFILE=Vagrantfile_1node TEMPLATE=1node_sasl_scram_mtls.yml vagrant up

# To run a 3 node environment without any security run:
VAGRANT_VAGRANTFILE=Vagrantfile_3node TEMPLATE=3node.yml vagrant up
```

#### Ssh into the machine
```
# use vagrant ssh
vagrant ssh

# use the provided ssh_public_key
ssh root@<hostname>
```

#### Remove the environment
````
# Once done testing, using
vagrant destroy
````
