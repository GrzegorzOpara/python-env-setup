# Applications
## git
```bash
sudo apt update
sudo apt install git
git --version
```
Config:
```bash
git config --global user.email "grzegorz.opara@gmail.com"
git config --global user.name "Grzegorz Opara"
```

## visual studio code
https://code.visualstudio.com/download

## postman
```bash
snap install postman
```

## azure data studio
https://database.guide/how-to-install-azure-data-studio-on-ubuntu-20-04/

## dbeaver (opensource db client)
```
sudo snap install dbeaver-ce
```

## nodejs and package manager (if you need NodeJS 14+)
```
cd ~
curl -sL https://deb.nodesource.com/setup_18.x -o nodesource_setup.sh

sudo bash nodesource_setup.sh

sudo apt install nodejs
```

# Infrastructure
## Azure CLI
```bash
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```
## Terraform
```bash
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```