!# /bin/bash

sudo at-get upgrade
sudo apt-get install zsh
echo "zsh" >> ~/.bashrc

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

cp silenz.zsh-theme ~/.oh-my-zsh/themes
sed -i 's/ZSH_THEME=.*/ZSH_THEME="silenz"/' ~/.zshrc
