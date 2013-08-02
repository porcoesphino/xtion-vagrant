#!/usr/bin/env bash

# Use apt-get throughout since it's the default in 12.04
# Why is aptitude already in the default vagrant box?
UPDATE_COMMAND="sudo apt-get"

# Ensure up-to-date without interaction
# http://askubuntu.com/questions/146921/how-do-i-apt-get-y-dist-upgrade-without-a-grub-config-prompt?rq=1
unset UCF_FORCE_CONFFOLD
export UCF_FORCE_CONFFNEW=YES
ucf --purge /boot/grub/menu.lst

export DEBIAN_FRONTEND=noninteractive
${UPDATE_COMMAND} update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade

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
