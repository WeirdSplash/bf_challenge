#!/bin/bash

echo "Creando AMI con Packer..."
packer build packer/ubuntu.pkr.hcl

echo "Desplegando Infra con Terraform..."
cd terraform
terraform init
terraform apply -auto-approve
