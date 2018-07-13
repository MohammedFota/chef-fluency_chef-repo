#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

# install the apache package

if node['platform_family'] == "rhel" 
	package = "httpd"
elsif node['platform_family'] == "debian"
	package = "apache2"
end

package 'apache' do
	
	package_name package
	action :install
end


# enable the apache service
service 'apache' do
	service_name package
	action [:enable, :start]
end

# include_recipe 'apache::websites'
