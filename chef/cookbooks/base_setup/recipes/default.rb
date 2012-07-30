#
# Cookbook Name:: base_setup
# Recipe:: default
#
# Copyright 2012, Just Us
#
# All rights reserved - Do Not Redistribute
#
base = data_bag_item('setup', 'setup').to_hash


base['packages'].keys.each do |pack|
  puts "***** Attempting install of '#{pack}' *****"
  package pack do
    action :install
  end
end