# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "vagrantops/ubuntu"
  config.vm.hostname = "vagrantops"

  # Add Ansible and Configuration Files
  config.vm.provision "file", source: "./ansible", destination: "/home/vagrant/ops"
  config.vm.provision "file", source: "./config.yml", destination: "/home/vagrant/ops/ansible/config.yml"

  # Run Ansible
  config.vm.provision "shell" do |s|
    s.path = "./provision.sh"
  end
end
