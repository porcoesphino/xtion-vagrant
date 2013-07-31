#!/usr/bin/env bash

# Ensure up-to-date
sudo aptitude update -y

# Build X since this we'll be spewing out video
sudo apt-get install xauth
sudo apt-get install xorg
sudo apt-get install openbox

# It's quite possible one of these libraries assumes something from the desktop environment. List it here until that's been ruled out
# sudo apt-get install ubuntu-desktop 

# Build packages
sudo aptitude install -y build-essential

# Developement tools
sudo aptitude install -y curl
sudo aptitude install -y git
sudo aptitude install -y vim

sudo aptitude install -y htop
sudo aptitude install -y automake
emacs
meld
colordiff
bash-completion


  
