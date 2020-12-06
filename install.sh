#!/bin/bash

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install emacs tree zsh -y

# Installation et configuration de zsh / oh-my-zsh
echo "cd" >> ~/.bashrc
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cp silenz.zsh-theme ~/.oh-my-zsh/themes
sed -i 's/ZSH_THEME=.*/ZSH_THEME="silenz"/' ~/.zshrc
