name "base_setup"
description "The base setup necessary for me to want to work on any box"
run_list(
  "recipe[git]",
  "recipe[base_setup]"
)
