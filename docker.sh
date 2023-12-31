#!/bin/bash
sudo apt update -y

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y

sudo apt update -y

apt-cache policy docker-ce 

sudo apt install docker-ce -y

docker info

sudo chmod 777 /var/run/docker.sock

sudo systemctl status docker

docker run -d --name sonarqube -p 9000:9000 sonarqube  #9000(userdefined):9000(sonar default port address)
