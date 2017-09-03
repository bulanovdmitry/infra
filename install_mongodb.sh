#!/bin/bash


set -x 

echo add repo...

echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list

echo apt update 

apt-get update 

echo install 
apt-get install -y mongodb-org

echo start mongo

systemctl start mongod
systemctl enable mongod


