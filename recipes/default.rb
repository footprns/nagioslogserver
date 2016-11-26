#
# Cookbook Name:: nagioslogserver
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

remote_file 'nagioslogserver-latest.tar.gz' do
  source 'http://assets.nagios.com/downloads/nagios-log-server/nagioslogserver-latest.tar.gz'
end

execute 'extraction_of_installer' do
  command 'tar xzf nagioslogserver-latest.tar.gz'
end

execute 'install_nagioslogserver' do
  command './nagioslogserver/fullinstall'
end
