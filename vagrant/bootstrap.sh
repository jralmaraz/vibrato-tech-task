#!/usr/bin/env bash

apt-get update

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

apt-add-repository ppa:ansible/ansible

apt-get install -y software-properties-common

sleep 5

apt-get update

sleep 5

apt-get install -y ansible

ansible-playbook /home/vagrant/vibrato-playbook.yml

sudo git clone https://github.com/jralmaraz/vibrato-tech-task /var/www/html/vibrato-tech-task

mv /var/www/html/vibrato-tech-task/sample-codes/*.php /var/www/html/

mv /var/www/html/vibrato-tech-task/sample-codes/*.sql /home/vagrant

mysql test < /home/vagrant/sample-data.sql

IP="$(ifconfig | grep -A 1 'eth1' | tail -1 | cut -d ':' -f 2 | cut -d ' ' -f 1)"

echo "To access the applications, use the following URLs (PLEASE NOTE THAT THE RETRIEVED IP ADDRESS NEEDS PUBLIC ACCESS):

  Insert new record: http://$IP/insert.php
  Retrieve records: http://$IP/users.php"

#A next version could separate the Web APP layer from the DB layer by running each component on different docker containers  
  
#Installing Docker CE - https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#install-using-the-repository

#MYSQL_ROOT_PASSWORD=$(head -c 32 /dev/urandom | base64)

#docker run --name mysql-vibratotechtask -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD -d mysql/mysql-server:latest

#docker run --name app-container-name --link mysql-vibratotechtask:mysql -d webapp-vibratotechtask


