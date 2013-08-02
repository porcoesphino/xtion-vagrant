# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Provided build from vagrant. Alternatively, see below
  config.vm.box = "xtion-precise32-i368"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

   # Daily server builds from Ubuntu
#  config.vm.box = "xtion-12.04-i368-current"
#  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-i386-vagrant-disk1.box"

#  # Custom base boxes seem simple but if we want to run from a desktop image sometime:
#  https://github.com/jedi4ever/veewee

  config.vm.provision :shell, :path => "bin/bootstrap.sh"

# Create a forwarded port mapping which allows access to a specific port
# within the machine from a port on the host machine. In the example below,
# accessing "localhost:8080" will access port 80 on the guest machine.
# config.vm.network :forwarded_port, guest: 80, host: 8080

# Create a private network, which allows host-only access to the machine
# using a specific IP.
  config.vm.network :private_network, ip: "10.0.0.5"

# Create a public network, which generally matched to bridged network.
# Bridged networks make the machine appear as another physical device on
# your network.
# config.vm.network :public_network

# If true, then any SSH connections made will enable agent forwarding.
# Default value: false
# config.ssh.forward_agent = true

  config.ssh.forward_x11 = true

# Share an additional folder to the guest VM. The first argument is
# the path on the host to the actual folder. The second argument is
# the path on the guest to mount the folder. And the optional third
# argument is a set of non-required options.
 config.vm.synced_folder "src", "/home/vagrant/src"
 config.vm.synced_folder "bin", "/home/vagrant/bin-vagrant"

# Provider-specific configuration so you can fine-tune various
# backing providers for Vagrant. These expose provider-specific options.
# Example for VirtualBox:

  config.vm.provider :virtualbox do |vb|

    # Don't boot with headless mode
    vb.gui = true

    # Only 50% host CPU consumption
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
    # Only 1GB of RAM
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    # Only 256MB of video RAM
    vb.customize ["modifyvm", :id, "--vram", "256"]
    # Only one CPU
    vb.customize ["modifyvm", :id, "--cpus", "1"]
    # Allow hardware 3D acceleration
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    # New splash page must be an uncompressed 256 color BMP file
    vb.customize ["modifyvm", :id, "--bioslogoimagepath", "splash.bmp"]
    # Allow audio
    vb.customize ["modifyvm", :id, "--audio", "coreaudio"]
    # Allow bidirectional clipboard
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    # Allow USB
    vb.customize ["modifyvm", :id, "--usb", "on"]
    # Allow USB EHCI
    vb.customize ["modifyvm", :id, "--usbehci", "on"]

    # I don't need more than 800 x 600 and I don't like it dancing
    # But I also don't want to set a global option T_T
    # VBoxManage setextradata global GUI/MaxGuestResolution 800,600

    # Loading from a partition can really wait:
    # http://www.virtualbox.org/manual/ch09.html

  end
end
