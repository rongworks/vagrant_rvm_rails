# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
 

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provision "system_tools",type:"shell",path: "system_tools_setup.sh"
  config.vm.provision "ruby_setup", type: "shell", path: "rvm_ruby_setup.sh", privileged: false, :args => "'2.2.0'"
  
  # config.vm.box_check_update = false
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

end
