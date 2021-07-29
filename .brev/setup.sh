#!/bin/bash

####################################################################################
##### Install VSCode extensions, Linux tools or any other global tooling here. #####
##### This will be run everytime you create or join a new project.             #####
####################################################################################

##### Essential Linux Installs #####
sudo apt-get install -y build-essential

##### Setting up VSCode defaults #####
mkdir -p /home/brev/.local/share/code-server/User
cp .vscode/settings.json /home/brev/.local/share/code-server/User/settings.json

##### Your VSCode Extensions #####
# code-server --install-extension <EXTENSION_ID>

##### Recommended VSCode Extensions #####
# code-server --install-extension esbenp.prettier-vscode
# code-server --install-extension eamodio.gitlens
# code-server --install-extension ms-azuretools.vscode-docker
# code-server --install-extension davidanson.vscode-markdownlint
# code-server --install-extension golang.go
# code-server --install-extension tyriar.sort-lines
# code-server --install-extension ryanolsonx.solarized

##### Zsh #####
sudo apt-get install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
echo "zsh" >>~/.bashrc
cat .brev/.zshrc >>~/.zshrc
cat .brev/.bash_profile >>~/.zshrc
source ~/.zshrc
