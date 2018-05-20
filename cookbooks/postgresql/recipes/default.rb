#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'postgresql-server' do
	notifies :run, 'execute [posgresql-init]'
end

execute 'postgresql-init' do
	command 'posgresql-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]
end
