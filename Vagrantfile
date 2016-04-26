# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
 
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.provider "docker" do |d|
    d.build_dir = "docker_build"
  end
end
