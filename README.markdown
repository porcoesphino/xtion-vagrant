Virtual Machine: OpenNi with Xtion PRO LIVE
=================================================================================================================================================================

Creates a VirtualBox Virtual Machine with Vagrant for Xtion PRO LIVE development.

#### What will be installed

* Ubuntu 12.04 32-bit LTS
* wget, curl, htop, vim, emacs, X
* libusb-1.0-0-dev, freeglut3-dev, unzip
* mono-complete, python, doxygen, graphviz

#### TODO

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

#### Overview

***Note:*** Most of this is probably wrong

- **NITE:** Closed source middleware sitting on top of OpenNI that contains a lot of the algorithms to do the fun stuff. What? I haven't researched. Forums are a mess. It seems like it's more for skeletons and user actions then point clouds
- **The [simple-openni](https://code.google.com/p/simple-openni/) library:** wraps OpenNI for it's use with the Processing programming language. (Notable for how often it comes up in web searches).
- **OpenCV:** is a decent computer vision library. Here are the [installation instructions](http://docs.opencv.org/doc/user_guide/ug_highgui.html) for use with OpenNI.
- **PCL:** Is a decent point cloud library. [Here are instructions for using it with an Xtion](http://pointclouds.org/documentation/tutorials/openni_grabber.php)

- [This blog](http://computervisionblog.wordpress.com/2012/09/03/xtion-kinect-on-ubuntu-12-04/) lists these versions for an Xtion Pro with ubuntu 12.04:
   - [OpenNI unstable 1.5.4.0](http://openni.org/Downloads/OpenNIModules.aspx)
   - [Harware binaries stable version 5.1.041](http://openni.org/Downloads/OpenNIModules.aspx)

- [This blog](http://uzafar.wordpress.com/2013/02/05/running-xtion-using-openni-in-ubuntu-11-10/) breaks down the steps.
- [This blog is best](http://igorbarbosa.com/articles/how-to-install-kin-in-linux-mint-12-ubuntu/) it breaks down steps and versions.

#### Tools to help debug

There is [a nice post in Spanish](http://blog.jorgeivanmeza.com/2011/12/instalacion-openni-sensor-kinect-y-nite-en-gnulinux-ubuntu-11-10-desde-fuentes/) that shows expected output for a Kinect. Just what we need!!

- dmesg
- lsusb
- lsmod
- rmmod
