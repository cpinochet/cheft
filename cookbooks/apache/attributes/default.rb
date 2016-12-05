default["apache"]["sites"]["linuxnode"] = { "site_title" => "Carlangas websites comming soon", "port" => 80 , "domain" => "linuxnode.nisum.com" }
default["apache"]["sites"]["UbuNode"] = { "site_title" => "Carlangas Ubuntu website", "port" => 80 , "domain" => "test-ubuntu-1204.nisum.com" }

default["author"]["name"] = "carlos"

case node["platform"]
	when "centos"
		default["apache"]["package"] = "httpd"
	when "ubuntu"
		default["apache"]["package"] = "apache2"
end
