# -*- mode: ruby -*-
# vi: set ft=ruby :
ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'

Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-7.2"

  # Use the vagrant-puppet-install plugin
  config.puppet_install.puppet_version = '3.8.4'


  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.hostname = "webserver"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "1024"
  end

  # Puppet Provisioning Setup
  config.r10k.puppet_dir = "puppet"
  config.r10k.puppetfile_path = "puppet/Puppetfile"
  config.r10k.module_path = "puppet/modules"

  config.vm.provision :puppet do |puppet|
    puppet.manifest_file = 'site.pp'
    puppet.manifests_path = 'puppet'
    puppet.module_path = 'puppet/modules'
  end

end
