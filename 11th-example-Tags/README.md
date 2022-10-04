# These example reflects the usage of tags in Playbooks.

## First Example show basic usage of tags


## Second example shows the usage of tags for installation, restart and other activites of Apache server.

Following commands can be used to test the tags

ansible-playbook example-webserver-withTags.yaml --list-tasks
### --check is used for Dry Run
ansible-playbook example-webserver-withTags.yaml --check
ansible-playbook example-webserver-withTags.yaml --tags=installation --check
ansible-playbook example-webserver-withTags.yaml --tags=service_restart --check
ansible-playbook example-webserver-withTags.yaml --tags=installation,service_restart --check
ansible-playbook example-webserver-withTags.yaml --skip-tags=installation,service_restart --check






