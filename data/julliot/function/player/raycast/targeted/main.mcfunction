$data merge storage julliapi:player {\
  raycast: {\
    $(temp): {\
      player_selector:'$(player_selector)',\
      target_selector:'$(target_selector)',\
      target_center:'$(target_center)',\
      ray_length:$(ray_length),\
      ray_args:'$(ray_args)',\
      temp:'$(temp)'\
    }\
  }\
}

$execute as $(player_selector) at @s run function julliot:player/raycast/targeted/set with storage julliapi:player raycast.$(temp)

$data remove storage julliapi:player raycast.$(temp)
