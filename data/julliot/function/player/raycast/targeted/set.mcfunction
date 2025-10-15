## Arguments

# the target entity MUST have "ray.target" tag

$execute unless entity $(target_selector) run return fail

#center
$scoreboard players set @s julliapi.raycastDistance $(ray_length)
$execute anchored feet facing entity $(target_selector) feet positioned ^ ^$(target_center) ^ run function julliot:player/raycast/targeted/loop with storage julliapi:player looking.$(temp)

$execute if score $(player_selector) julliapi.raycastHit matches 1 run return 0

#feet
$scoreboard players set @s julliapi.raycastDistance $(ray_length)
$execute anchored eyes facing entity $(target_selector) feet positioned ^ ^ ^ run function julliot:player/raycast/targeted/loop with storage julliapi:player looking.$(temp)

$execute if score $(player_selector) julliapi.raycastHit matches 1 run return 0

#eyes
$scoreboard players set @s julliapi.raycastDistance $(ray_length)
$execute anchored eyes facing entity $(target_selector) eyes positioned ^ ^ ^ run function julliot:player/raycast/targeted/loop with storage julliapi:player looking.$(temp)