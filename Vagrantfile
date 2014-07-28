# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :web do |web_config|
      web_config.vm.box = "precise64"
      web_config.vm.network :private_network, ip: "192.168.33.10"

      web_config.vm.provision :ansible do |ansible|
          ansible.playbook = "devops/webserver.yml"
          ansible.inventory_path = "devops/hosts_vagrant"
          ansible.limit = "all"
          ansible.host_key_checking = false
          ansible.verbose = "vvvv"
          ansible.extra_vars = { ansible_ssh_user: 'vagrant' }
      end
  end
end
