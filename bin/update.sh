#!/usr/bin/env bash
#
# Update the system without interaction

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

