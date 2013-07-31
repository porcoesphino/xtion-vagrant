Virtual Machine: OpenNi with Xtion PRO LIVE
=================================================================================================================================================================

Creates a VirtualBox Virtual Machine with Vagrant for Xtion PRO LIVE development.

#### What will be installed

* Ubuntu 12.04 32-bit LTS
* Python, g++, wget, curl, htop, vim

##### TODO
* `sudo apt-get install mono-complete`
* `sudo apt-get install libusb-1.0-0-dev`
* `sudo apt-get install freeglut3-dev`
* `sudo apt-get install build-essential`
* (Why these four??) python  openjdk-7-jdk doxygen graphviz
* X
* emacs
* OpenNI
* Nite
* Sense
* OpenCV with OpenNI support
* PCL?

###### Make this a new base box

* `vagrant package --base <current-box-in-Vagrantfile>.box --output <new-boxname>.box`
* `vagrant box add <name> <new-boxname>.box`
* `vagrant box list`

#### Usage

* Download and install [git](http://downloads.vagrantup.com/tags/v1.2.2)
* Download and install [Vagrant 1.2.2](http://downloads.vagrantup.com/tags/v1.2.2)
* Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Install git submodules: `git submodule update --init`
* Run the command `vagrant up`
* On \*unix to enter in the machine run the command `vagrant ssh` on Windows it will output the configuration to access via `puTTy`
* If using X then `vagrant ssh -- -Yt`
