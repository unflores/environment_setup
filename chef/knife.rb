# client_key is the api key for my user
current_dir              = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "unflores"
client_key               "#{current_dir}/keys/unflores.pem"
validation_client_name   "aust-validator"
validation_key           "#{current_dir}/keys/aust-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/aust"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/cookbooks"]
