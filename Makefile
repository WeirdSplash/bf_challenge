PACKER_BUILD = packer build packer/ubuntu.pkr.hcl
TERRAFORM_INIT = terraform -chdir=terraform init
TERRAFORM_APPLY = terraform -chdir=terraform apply -auto-approve

all: build deploy

build:
	@echo "Creando AMI con Packer..."
	$(PACKER_BUILD)

deploy:
	@echo "Desplegando Iac con Terraform..."
	$(TERRAFORM_INIT)
	$(TERRAFORM_APPLY)
