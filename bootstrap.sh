#!/usr/bin/env bash

# Ensure up-to-date
sudo aptitude update -y

# Build X since this we'll be spewing out video
sudo apt-get install -y xauth
sudo apt-get install -y xorg
sudo apt-get install -y openbox

# It's quite possible one of these libraries assumes something from the desktop environment. List it here until that's been ruled out
# sudo apt-get install ubuntu-desktop 

# Build packages
sudo aptitude install -y build-essential
sudo aptitude install -y automake

# Developement tools
sudo aptitude install -y htop
sudo aptitude install -y curl
sudo aptitude install -y wget
sudo aptitude install -y git
sudo aptitude install -y vim
sudo aptitude install -y emacs
sudo aptitude install -y meld
sudo aptitude install -y colordiff
sudo aptitude install -y bash-completion

# The Xtion libraries

# Configuration
# A horrible hack, but we know the vagrant user
export HOME=/home/vagrant
cd $HOME
if [ ! -d $HOME/dotfiles ]; then
  sudo -u vagrant git clone https://github.com/porcoesphino/dotfiles
fi
cd $HOME/dotfiles && sudo -u vagrant git submodule update --init && sudo -u vagrant make install
