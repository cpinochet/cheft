name "dev"
description "This is the development enviroment"
cookbook "apache", "= 0.1.5"
default_attributes({
	"author" => {
		"name" => "Daniel" 
}		
})
