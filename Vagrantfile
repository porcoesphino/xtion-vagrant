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

  config.vm.network :private_network, ip: "10.0.0.5"

  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--memory", "512"
    ]
    config.vm.provision :shell, :path => "bootstrap.sh"
  end

end
