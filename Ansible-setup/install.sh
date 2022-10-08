#! /bin/bash
set -eux
sudo yum update –y
sudo amazon-linux-extras install ansible2 -y
pubip=$( curl http://ip4.me 2>/dev/null | sed -e 's#<[^>]*>##g' | grep '^[0-9]' )
scp -i terraform.pem ./terraform.pem ec2-user@pubip
sudo hostnamectl set-hostname master
exec bash
private=$(ip route get 8.8.8.8 | sed -n '/src/{s/.*src *\([^ ]*\).*/\1/p;q}')
