#!/bin/bash

# Update package manager and install required packages
sudo apt-get update
sudo apt-get install -y wget curl zip net-tools

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

# Install Ansible
sudo apt-get install -y ansible

# Install Terraform
curl -fsSL https://releases.hashicorp.com/terraform/0.14.11/terraform_0.14.11_linux_amd64.zip -o terraform.zip
unzip terraform.zip
chmod +x terraform
sudo mv terraform /usr/local/bin/
rm terraform.zip

# Install security and system administration tools
sudo apt-get install -y fail2ban
sudo apt-get install -y unattended-upgrades
sudo apt-get install -y auditd

# Additional security hardening steps can be added here as needed

# Clean up
rm -rf get_helm.sh awscli-exe-linux-x86_64.zip

# Verify installations
docker --version
helm version --short
aws --version
ansible --version
terraform --version

# Verify the installed security tools
fail2ban-client -V
unattended-upgrade --version
auditd --version
