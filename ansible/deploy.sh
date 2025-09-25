#!/bin/bash

# Aller dans le dossier Terraform
cd ../infra

echo " Initialisation de Terraform..."
terraform init

echo " Application de l'infrastructure..."
terraform apply -auto-approve

# Revenir dans le dossier Ansible
cd ../ansible

echo " Provisionnement avec Ansible..."
ansible-playbook provision.yml -i inventory.ini

echo " Déploiement avec Ansible..."
ansible-playbook deploy.yml -i inventory.ini
