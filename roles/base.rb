name "base"
description "contains recipes that should run on all nodes."
<<<<<<< HEAD
run_list "recipe[chef-client::delete_validation]","recipe[chef-client::cron]","recipe[chef-client]","recipe[localusers]"

=======
run_list "recipe[security]", "recipe[localusers]"
>>>>>>> 99345341c00bc498fbf5c6178ca63475af6e6196
