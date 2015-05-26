# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # TO DO: Move to .rb file
  # borrow more from https://github.com/laravel/homestead/blob/master/scripts/homestead.rb
  # Thanks, Taylor and contributors to Homestead!

  config.vm.box = "vagrantops/ubuntu"
  config.vm.hostname = "vagrantops"

  # Prevent TTY Errors
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  # Configure A Private Network IP
  config.vm.network :private_network, ip: "192.168.12.12"

  # Configure A Few VirtualBox Settings
  config.vm.provider "virtualbox" do |vb|
    vb.name = 'vagrantops'
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--cpus", "1"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--ostype", "Ubuntu_64"]

    # Set the timesync threshold to 10 seconds, instead of the default 20 minutes.
    # If the clock gets more than 15 minutes out of sync (due to your laptop going
    # to sleep for instance, then some 3rd party services will reject requests.
    vb.customize ["guestproperty", "set", :id, "/VirtualBox/GuestAdd/VBoxService/--timesync-set-threshold", 10000]
  end

  # Use NFS for the shared folder (??)
  config.vm.synced_folder ".", "/vagrant",
            id: "core",
            :nfs => true,
            :mount_options => ['nolock,vers=3,udp,noatime']

  # Add Ansible and Configuration Files
  config.vm.provision "file", source: "./ansible",    destination: "/home/vagrant/ops/ansible"
  config.vm.provision "file", source: "./config.yml", destination: "/home/vagrant/ops/ansible/config.yml"

  # Run Ansible
  config.vm.provision "shell" do |s|
    s.path = "./provision.sh"
    s.privileged = false
  end
end
