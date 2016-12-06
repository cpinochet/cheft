name "base"
description "contains recipes that should run on all nodes."
run_list "recipe[security]", "recipe[localusers]"
