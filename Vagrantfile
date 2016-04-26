# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'
containers = YAML.load_file('containers.yml')

Vagrant.configure(2) do |config|
 
  containers.each do |container|
  	config.vm.define container["name"] do |cntnr|
      cntnr.vm.provider "docker" do |docker|
		docker.ports = container["ports"]
		docker.build_dir = container["build_dir"]
		docker.name = container["name"]
      end
    end
  end
end
