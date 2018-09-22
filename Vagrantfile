# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # vagrant box add centos7.1 https://github.com/CommanderK5/packer-centos-template/releases/download/0.7.1/vagrant-centos-7.1.box
  # ↑を実行する
  config.vm.box = "centos7.1"

  # config.vm.box_check_update = false

  config.vm.network "forwarded_port", guest: 22, host: 2000, host_ip: "127.0.0.1"

  config.vm.network "private_network", ip: "192.168.10.2"

  config.vm.synced_folder "./share", "/srv/share", owner: "vagrant", group: "vagrant"

  # config.vm.network "public_network"

   config.vm.provider "virtualbox" do |vb|
     vb.gui = true
     vb.memory = "1024"
   end

  config.vm.provision :shell, path: "bootstrap.sh"
end
