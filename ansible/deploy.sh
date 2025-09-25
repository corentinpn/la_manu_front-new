#!/bin/bash

# Aller dans le dossier Terraform
cd ../infra

# Lancer Terraform
terraform init
terraform apply -auto-approve

# Revenir dans le dossier Ansible
cd ../ansible

# Lancer Ansible
ansible-playbook provision.yml -i inventory.ini
