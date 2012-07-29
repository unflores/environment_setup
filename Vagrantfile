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


  # Enable provisioning with chef server, specifying the chef server URL,
  # and the path to the validation key (relative to this Vagrantfile).
  #
  # The Opscode Platform uses HTTPS. Substitute your organization for
  # ORGNAME in the URL and validation key.
  #
  # If you have your own Chef Server, use the appropriate URL, which may be
  # HTTP instead of HTTPS depending on your configuration. Also change the
  # validation key to validation.pem.
  #
  # config.vm.provision :chef_client do |chef|
  #   chef.chef_server_url = "https://api.opscode.com/organizations/ORGNAME"
  #   chef.validation_key_path = "ORGNAME-validator.pem"
  # end
  #
  # If you're using the Opscode platform, your validator client is
  # ORGNAME-validator, replacing ORGNAME with your organization name.
  #
  # IF you have your own Chef Server, the default validation client name is
  # chef-validator, unless you changed the configuration.
  #
  #   chef.validation_client_name = "ORGNAME-validator"
end
