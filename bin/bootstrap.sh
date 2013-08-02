#!/usr/bin/env bash

# Use apt-get throughout since it's the default in 12.04
# Why is aptitude already in the default vagrant box?
UPDATE_COMMAND="sudo apt-get"

# Ensure catalogue is up to date
${UPDATE_COMMAND} update

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

# The Xtion libraries dependencies
libusb-1.0-0-dev
freeglut3-dev
unzip
zip

)

${UPDATE_COMMAND} install -y ${packagelist[@]}

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