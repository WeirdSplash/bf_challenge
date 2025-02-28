# Instalar ansible
# Instalar AWS CLI
# instalar packer
# Instalar Packer
# Windows
# Instalar un package manager para Window (chocolatey)
choco install packer
# MacOs
brew tap hashicorp/tap
brew install hashicorp/tap/packer
# bf_challenge
packer init packer/ubuntu.pkr.hcl
packer build packer/ubuntu.pkr.hcl

# requisitos aws (la cuenta de aws debe tener un VPC default sino restaurar o recrear)
aws ec2 create-default-vpc
aws ec2 describe-vpcs --filters "Name=isDefault,Values=true"

# Instalar dependencias

sudo apt install -y packer ansible terraform awscli

# Configurar credenciales AWS
aws configure

# Ejecutar proceso con Makefile
make all
