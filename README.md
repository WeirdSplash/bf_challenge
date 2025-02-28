Este repositorio automatiza la creacion de una AMI EC2 con packer, terraform y ansible
# Instalar dependencias 

# Windows
# Instalar un package manager para Window (chocolatey)
choco install packer
# MacOs
brew tap hashicorp/tap
brew install hashicorp/tap/packer
<img width="1136" alt="image" src="https://github.com/user-attachments/assets/e5f35a9d-35ce-4fa9-9cdf-14baa819c804" />
<img width="595" alt="image" src="https://github.com/user-attachments/assets/c725a095-3391-4132-9646-9a00af6c0d15" />

# Ubuntu
sudo apt update && sudo apt install -y packer

# MacOs
brew install packer ansible terraform awscli
# Ubuntu
sudo apt install -y packer ansible terraform awscli

# Configurar credenciales AWS
aws configure
# Requisitos aws (la cuenta de aws debe tener un VPC default sino restaurar o recrear)
aws ec2 create-default-vpc
aws ec2 describe-vpcs --filters "Name=isDefault,Values=true"

# Crear key pair 'my-key.pem'

# Ejecucion
packer init packer/ubuntu.pkr.hcl
<img width="1469" alt="image" src="https://github.com/user-attachments/assets/fdce6db2-ca1a-4eed-8533-acf2ab7d8765" />

packer build packer/ubuntu.pkr.hcl
<img width="1469" alt="image" src="https://github.com/user-attachments/assets/d9b7d2db-06e9-4538-a83a-9c5fdf0447d7" />

<img width="1469" alt="image" src="https://github.com/user-attachments/assets/8845bef3-2748-44da-ac56-060ca83aa114" />
<img width="1469" alt="image" src="https://github.com/user-attachments/assets/cd3575e2-0ad9-4bdb-ae82-bfa3eb2abfd0" />

# Ejecutar proceso con Makefile
make all
<img width="1469" alt="image" src="https://github.com/user-attachments/assets/4d562c77-817c-417c-bd69-3e533bfcf277" />
<img width="1469" alt="image" src="https://github.com/user-attachments/assets/856c669c-e4d2-4abb-a2ae-d6137e20156d" />
<img width="1468" alt="image" src="https://github.com/user-attachments/assets/bef9e439-39c9-41ed-945a-0ce5b4bea84e" />
<img width="1468" alt="image" src="https://github.com/user-attachments/assets/8be1f18d-5c67-46de-bb0c-404c770b0ec6" />

# Consola AWS (AMIs)
<img width="1225" alt="image" src="https://github.com/user-attachments/assets/8bbd63dd-acca-4b76-a76b-6ee35a8718e9" />

# Consola AWS (EC2)
<img width="1226" alt="image" src="https://github.com/user-attachments/assets/7d102e17-316f-4e2f-83e2-f815a4aa4400" />
<img width="1200" alt="image" src="https://github.com/user-attachments/assets/601675d6-3a09-48bc-a8ee-ffe4e56d7d9a" />

# Conectarse a la direccion publica de la instancia creada con la automatizacion,
<img width="556" alt="image" src="https://github.com/user-attachments/assets/e67b94b9-f769-4b34-9c17-5ecc0f1a1050" />

