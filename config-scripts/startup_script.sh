#!/bin/bash

mkdir /home/alex/

cd /home/alex

#устанавливаем Ruby и Bundler:

sudo apt update

sudo apt install -y ruby-full ruby-bundler build-essential

#ADD Keys

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list'

# Install Mongo

sudo apt update

sudo apt install -y mongodb-org

#Run Mongo and add to startup
sudo systemctl start mongod
sudo systemctl enable mongod

#Deploy APP

git clone -b monolith https://github.com/express42/reddit.git

cd reddit && bundle install

puma -d

#Add firewall rule

#gcloud compute --project=infra-245107 firewall-rules create default-puma-server --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=tcp:9292 --source-ranges=0.0.0.0/0 --target-tags=puma-server
