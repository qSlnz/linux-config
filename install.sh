#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install emacs tree zsh -y

# Installation et configuration de zsh / oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cp slnz.zsh-theme ~/.oh-my-zsh/themes
sed -i 's/ZSH_THEME=.*/ZSH_THEME="slnz"/' ~/.zshrc
echo cd >> ~/.zshrc
source ~/zshrc
