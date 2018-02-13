#! /bin/bash
sudo apt-get update
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible -y
# apt-get install openssh-server -y
sudo git clone https://github.com/andreipak/wordpress-ansible
cd wordpress-ansible
sudo ansible-playbook playbook.yml -i hosts -e mysql_root_password=#password#
