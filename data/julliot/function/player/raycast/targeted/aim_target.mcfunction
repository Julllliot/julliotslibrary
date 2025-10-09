#center
$scoreboard players set @s julliapi.raycastDistance $(ray_length)
$tp @s ~ ~-$(target_center) ~ facing entity $(target_selector) feet
$execute at @s anchored feet positioned ^ ^$(target_center) ^ if entity $(target_selector) run function julliot:player/raycast/targeted/loop with storage julliapi:player looking.$(temp)

$execute if score $(player_selector) julliapi.raycastHit matches 1 run return run kill @s

#feet
$scoreboard players set @s julliapi.raycastDistance $(ray_length)
$tp @s ~ ~-.1 ~ facing entity $(target_selector) feet
$execute at @s anchored feet positioned ^ ^.1 ^ if entity $(target_selector) run function julliot:player/raycast/targeted/loop with storage julliapi:player looking.$(temp)

$execute if score $(player_selector) julliapi.raycastHit matches 1 run return run kill @s

#eyes
$scoreboard players set @s julliapi.raycastDistance $(ray_length)
$tp @s ~ ~ ~ facing entity $(target_selector) eyes
$execute at @s anchored feet positioned ^ ^ ^ if entity $(target_selector) run function julliot:player/raycast/targeted/loop with storage julliapi:player looking.$(temp)

kill @s