# MUST insert in target components:
# [type=foo, tag=bar, distance=..foo]

# the target entity MUST have "ray.target" tag

$data merge storage julliapi:player {\
  looking: {\
    $(temp): {\
      player_selector:"$(player_selector)",\
      target_selector:"$(target_selector)",\
      target_center:"$(target_center)",\
      ray_length:$(ray_length),\
      ray_args:'$(ray_args)',\
      temp:"$(temp)"\
    }\
  }\
}

$execute as $(player_selector) at @s run function julliot:player/looking/target/set with storage julliapi:player looking.$(temp)

$data remove storage julliapi:player looking.$(temp)
