#!/bin/bash

# Update package manager and install required packages
sudo apt-get update
sudo apt-get install -y wget curl

# Install Docker
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker

# Install Helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod +x get_helm.sh
./get_helm.sh

# Install AWS CLI
curl -O https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
unzip awscli-exe-linux-x86_64.zip
sudo ./aws/install

# Clean up
rm -rf get_helm.sh awscli-exe-linux-x86_64.zip

# Verify installations
docker --version
helm version --short
aws --version
