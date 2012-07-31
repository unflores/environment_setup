# -*- mode: ruby -*-
# vi: set ft=ruby :
ip_address    = '192.168.1.100'

Vagrant::Config.run do |config|

  config.vm.box               = "lucid"
  config.ssh.username         = "vagrant"

  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  config.vm.network :hostonly, '192.168.33.10'

  # Make ports accessible for outside boxes
  config.vm.forward_port(22, 2222)
  config.vm.forward_port 80, 8080
  

  # Configure share folders
  # The deeper the files the slower the share
  config.vm.share_folder 'Sunspot', '/var/www/sunspot', '/var/www/sunspot'

  config.vm.provision :chef_client do |chef|
    # Organization url
    chef.chef_server_url           = "https://api.opscode.com/organizations/aust"
    # Name to give the node
    chef.node_name                 = "testbox"
    # Client key path
    chef.validation_key_path       = "chef/keys/aust-validator.pem"
    # Using the Opscode platform, validator client: ORGNAME-validator
    chef.validation_client_name    = "aust-validator"

    chef.add_role "base_setup"
    chef.add_recipe "nginx"
  end
end
