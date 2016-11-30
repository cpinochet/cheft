#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "apache2" do
	action :install
end

#/etc/httpd owner
directory '/etc/apache2' do
	mode "0755"
	owner "www-data"
  	group "www-data"
    recursive true
end

node["apache2"]["sites"].each do |sitename, data|

	document_root = "/content/sites/#{sitename}"
	
	directory document_root do
		mode "0755"
		recursive true
	end

	template "/content/sites/#{sitename}/index.html" do
		source "index.html.erb"
		mode "0644"
		variables(
			:site_title => data["site_title"],
			:comingsoon => "Ya se viene ...."
		)
	end
end