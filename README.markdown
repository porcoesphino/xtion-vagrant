Virtual Machine: OpenNi with Xtion PRO LIVE
=================================================================================================================================================================

Creates a VirtualBox Virtual Machine with Vagrant for Xtion PRO LIVE development.

#### What will be installed

* Ubuntu 12.04 32-bit LTS
* wget, curl, htop, vim, emacs, X
* libusb-1.0-0-dev, freeglut3-dev, unzip

##### TODO
* `sudo apt-get install mono-complete`
* 
* (Why these four??) python  openjdk-7-jdk doxygen graphviz
* 
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
* Install the [vagrant-vbguest plugin](https://github.com/dotless-de/vagrant-vbguest) using `vagrant plugin install vagrant-vbguest`
   * This ensures the machines guest additions match
* Install git submodules: `git submodule update --init`
* Run the command `vagrant up`
* On \*unix to enter in the machine run the command `vagrant ssh`
   * On Windows it will output the configuration for using `puTTy`
   * Use `vagrant ssh -- -Yt` to use X
