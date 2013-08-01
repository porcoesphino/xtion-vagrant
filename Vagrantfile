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

  config.vm.provision :shell, :path => "bootstrap.sh"

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

# Share an additional folder to the guest VM. The first argument is
# the path on the host to the actual folder. The second argument is
# the path on the guest to mount the folder. And the optional third
# argument is a set of non-required options.
# config.vm.synced_folder "../data", "/vagrant_data"

# Provider-specific configuration so you can fine-tune various
# backing providers for Vagrant. These expose provider-specific options.
# Example for VirtualBox:

  config.vm.provider :virtualbox do |vb|

    # Don't boot with headless mode
    vb.gui = true

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "1024"]

  end

end
