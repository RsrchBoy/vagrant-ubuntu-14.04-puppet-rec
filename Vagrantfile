# -*- mode: ruby -*-
# vi: set ft=ruby ts=2 :

# This work is licensed under a Creative Commons Attribution-ShareAlike 4.0
# International License.
#
# http://creativecommons.org/licenses/by-sa/4.0/
#
# Chris Weyl <cweyl@alumni.drew.edu> 2014

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = 'ubuntu/trusty64'
  config.vm.network :private_network, :type => 'dhcp'
  config.vm.hostname = 'trusty'
  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
    v.customize [ :modifyvm, :id, '--nictype1', :virtio ]
    v.customize [ :modifyvm, :id, '--nictype2', :virtio ]
  end

  config.vm.provision :shell, path: 'provision.sh'
end
