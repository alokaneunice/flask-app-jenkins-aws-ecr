#!/bin/bash
 
sudo apt update -y

sudo apt upgrade -y 

sudo apt install openjdk-17-jre -y

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y 
sudo apt-get install jenkins -y
jenkins --version

echo "Waiting for 30 seconds before installing the aws cli..."
sleep 15

sudo apt install -y docker.io

# Add the current user to the 'docker' group 
sudo chmod 777 /var/run/docker.sock

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Print Docker version
docker --version
echo "Waiting for 30 seconds before installing the aws cli..."
sleep 15

## install aws cli
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" 
sudo apt install unzip 
unzip awscliv2.zip 
sudo ./aws/install

#check the version

aws --version