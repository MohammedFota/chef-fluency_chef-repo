#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

# install the apache package
package 'apache' do
	package_name 'httpd'
	action :install
end


# enable the apache service
service 'apache' do
	service_name 'httpd'
	action [:enable, :start]
end
