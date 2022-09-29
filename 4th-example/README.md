# ###################################
# This example shows how to use host based variables.
# To use host based variables, variables should be declared in the ANsible Inventory
# i.e. sudo vim /etc/ansible/hosts
# [workers]
# worker1 mypackage=httpd myservice=httpd
# worker2 mypackage=docker myservice=docker

ansible-playbook 4th-example-host-variables.yaml --syntax-check

ansible-playbook 4th-example-host-variables.yaml 



 
