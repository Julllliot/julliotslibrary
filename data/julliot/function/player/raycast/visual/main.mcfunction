$data merge storage julliapi:player {\
  raycast: {\
    $(temp): {\
      player_selector:'$(player_selector)',\
      target_selector:'$(target_selector)',\
      target_center:'$(target_center)',\
      ray_length:$(ray_length),\
      yaw:$(yaw),\
      pitch:$(pitch),\
      radius:'$(radius)',\
      temp:'$(temp)'\
    }\
  }\
}

$execute store result storage julliapi:player raycast.$(temp).rotation_inv_x float -1 run data get entity $(player_selector) Rotation[0]
$execute store result storage julliapi:player raycast.$(temp).rotation_inv_y float -1 run data get entity $(player_selector) Rotation[1]
$execute positioned as $(player_selector) facing entity $(target_selector) feet positioned 0. 0. 0. positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:['so.marker','vector']}
$execute positioned 0. 0. 0. store result storage julliapi:player raycast.$(temp).vector_to_target_y float 1 run data get entity @n[type=marker,tag=vector,distance=..2] Pos[1]
execute positioned 0. 0. 0. run kill @n[type=marker,tag=vector,distance=..2]

$execute as $(player_selector) at @s run function julliot:player/raycast/visual/set with storage julliapi:player raycast.$(temp)

$data remove storage julliapi:player raycast.$(temp)