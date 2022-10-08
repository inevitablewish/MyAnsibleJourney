# Setting up Environment for Ansible in AWS
The purpose of this lab is to set up environment to setup ansible
In total, 3 instances were created. 2 of them were in Private Subnet and 1 of them in Public Subnet.
Public key was created through AWS Console and private key was used to access public instance.
After successfully ssh to Public Instance, Attempt to access two private instances is made.
This is done by copying the private key *.pem from local machine to public instance.

scp -i terraform.pem ./terraform.pem ec2-user@ec2-54-252-156-9.ap-southeast-2.compute.amazonaws.com:/home/ec2-user/

Once copied, ssh access is attempted to private instances.

# Changing the hostnames of private instances

sudo hostnamectl set-hostname worker1
sudo hostnamectl set-hostname worker2
sudo hostnamectl set-hostname master

use

exec bash after running above command individually

# Add the hostnames to /etc/hosts/

sudo vim /etc/hosts

10.0.1.228 worker1
10.0.1.240 worker2
10.0.0.246 master

# Installing ansible

sudo yum update -y
sudo amazon-linux-extras install ansible2 -y

confirm version with ansible --version

# Adding hostnames to ansible Inventory

sudo vim /etc/ansible/hosts

worker1
worker2

[workers]
worker1
worker2

[All]
worker1
worker2
master

# Generate SSH Key for Ansible

In Public Instance i.e. Master create a new key 

ssh-keygen -t rsa

this will generate private and public key at ./ssh directory
keynames are id_Rsa and id_rsa.pub

cat ./ssh/id_rsa.pub

copy the content

ssh to private instances using the key used at the time of creation

ssh -i terraform.pem ec2-user@worker1

paste it to authorized_keys at

vim /.ssh/authorized_keys

Once added to both the private instances

try the following command 

ansible -m ping all
ansible -m ping worker1
ansible -m ping workers

if the outcome is 
================================
worker2 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    }, 
    "changed": false, 
    "ping": "pong"
}

worker1 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    }, 
    "changed": false, 
    "ping": "pong"
}

================================
The ansible configuration is successful
