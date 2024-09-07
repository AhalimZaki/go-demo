#!/bin/bash

# Update the system
sudo yum update -y
sudo yum install -y yum-utils

# Install Docker
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker

# Add the ec2-user to the docker group so you can execute Docker commands without using sudo
sudo usermod -aG docker ec2-user
# Start Docker service
sudo systemctl start docker.service

# Adjust permissions for Docker
sudo chmod 666 /var/run/docker.sock

#docker compose
sudo curl -L https://github.com/docker/compose/releases/download/v2.29.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version
# Display Docker processes and info
docker ps
docker info