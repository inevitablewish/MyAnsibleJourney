# Following are the instructions / pre-requisites
1. Ansible is pre-configured
2. Infrastructure is already provisioned (Terraform)

# ###############################################
# Run the following commands to run the playbook

ansible-playbook 1st-example-apache-server.yaml --syntax-check # This is to check the YAML Syntax


ansible-playbook 1st-example-apache-server.yaml # This is to run the playbook

# ##########################################
# Output Confirmation
# #########################################
 
curl http://worker1
curl http:// worker2

This should reflect the http webpage output.



