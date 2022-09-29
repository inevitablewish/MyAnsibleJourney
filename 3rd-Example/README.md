# This playbook leverages variables to start/restart services

ansible-playbook 3rd-example-variables.yaml --syntax-check


ansible-playbook 3rd-example-variables.yaml

# variables can be passed to playbook on runtime.

ansible-playbook 3rd-example-variables.yaml -e myvar1=docker -e myvar2=stopped



ansible-playbook 3rd-example-variables.yaml -e myvar1=docker -e myvar2=started
