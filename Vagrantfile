# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'rbconfig'

hosts = [
  { name: 'centos6', box: 'bento/centos-6.7', port: '8080'},
  { name: 'centos7', box: 'bento/centos-7.2', port: '8081'}
]   


# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  hosts.each do |host|

  	host_name = host[:name]

  	config.vm.define host_name do |node|
  	  node.vm.box = host[:box]

      node.vm.hostname = host[:name]
      node.vm.network "forwarded_port", guest: 80, host: host[:port]

      # VirtualBox optimization
      node.vm.provider "virtualbox" do |vb|
        vb.gui = true
        vb.memory = "1024"
      end

	  # Provisioning of httpd-service
      node.vm.provision "shell", inline: <<-SHELL
        sudo yum install -y httpd
        sudo service httpd restart
      SHELL
    end
  end
end
