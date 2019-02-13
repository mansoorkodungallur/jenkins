#!/bin/bash
#install script of jenkins in ubunutu 16 or 18 versions
sudo apt-get update 
sudo apt-get install vim wget curl -y

#install java 8
sudo apt install openjdk-8-jdk -y

#install jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
echo 'deb https://pkg.jenkins.io/debian-stable binary/' | sudo tee --append /etc/apt/sources.list
sudo apt-get update
sudo apt-get install jenkins -y
sudo systemctl start jenkins
sudo systemctl enable  jenkins
sudo systemctl status  jenkins
echo "------------------------ install completed---------------------"
