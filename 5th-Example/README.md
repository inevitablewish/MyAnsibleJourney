# Ansible ad-hoc commands to get and use ansible Facts
## First Example
 ansible worker1 -m setup
 ansible worker2 -m setup
 ansible worker2 -m setup -a 'filter=ansible_system'
 ansible worker2 -m setup -a 'filter=ansible_architecture'
 ansible workers -m setup -a 'filter=ansible_architecture'
 ansible workers -m setup -a 'filter=ansible_processor'
 ansible worker2 -m setup -a 'filter=ansible_processor'
 ansible worker2 -m setup -a 'filter=ansible_memtotal_mb'
 ansible worker2 -m setup -a 'filter=ansible_hostname'
 ansible worker2 -m setup -a 'filter=ansible_fqdn'


##########  Use Grep filter tool of linux to find the fact name 

 ansible worker2 -m setup | grep time
 ansible worker2 -m setup -a 'filter=ansible_date_time'
 ansible worker2 -m setup | grep mem
 ansible worker2 -m setup -a 'filter=ansible_memtotal_mb
 ansible worker2 -m setup | grep distribution
 ansible worker2 -m setup -a 'filter=ansible_distribution_version'

 ansible worker2 -m setup -a 'filter=ansible_pkg_mgr'


# Ansible Facts can be exported using
ansible worker1 -m setup  >> setup.txt

## Conditional Operators to be used
Note :  
   Comparison operators:  
            ==      ⇒   is equals to
            !=      ⇒  not equals to
           <=      ⇒     less than or equals to
           >=      ⇒     greater than or equals to

