$data merge storage julliapi:player {\
  raycast: {\
    $(temp): {\
      player_selector:"$(player_selector)",\
      target_selector:"$(target_selector)",\
      target_center:"$(target_center)",\
      ray_length:$(ray_length),\
      cos:$(cos),\
      sin:$(sin),\
      zed:$(zed),\
      radius:"$(radius)",\
      temp:"$(temp)"\
    }\
  }\
}

$execute as $(player_selector) at @s anchored feet run function julliot:player/raycast/visual/set with storage julliapi:player raycast.$(temp)

$data remove storage julliapi:player raycast.$(temp)