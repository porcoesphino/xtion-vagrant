#!/usr/bin/env bash

# Ensure up-to-date
sudo aptitude update -y

packagelist=(
# Build X since this we'll be spewing out video
xauth
xorg
openbox

# It's quite possible one of these libraries assumes something from the desktop environment. List it here until that's been ruled out
# sudo apt-get install ubuntu-desktop 

# Build packages
build-essential
automake

# Developement tools
htop
curl
wget
git
vim
emacs
meld
colordiff
bash-completion

# The Xtion libraries

)

sudo apt-get install -y ${packagelist[@]}

# Configuration
# A horrible hack, but we know the vagrant user
export HOME=/home/vagrant
cd $HOME
if [ ! -d $HOME/dotfiles ]; then
  sudo -u vagrant git clone https://github.com/porcoesphino/dotfiles
fi
cd $HOME/dotfiles && \
sudo -u vagrant git submodule update --init && \
sudo -u vagrant make install
