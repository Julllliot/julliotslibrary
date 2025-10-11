# Arguments

# execute this as @a[limit=1] at @s anchored eyes positioned ^ ^ ^
# Macros: max_distance
# the target entity MUST have "ray.target" tag

$scoreboard players set $(player_selector) julliapi.raycastDistance $(ray_length)
$execute as $(player_selector) at @s anchored feet facing entity $(target_selector) feet positioned ^ ^$(target_center) ^ if entity $(target_selector) run function julliot:player/raycast/default/vec with storage julliapi:player looking.$(temp)

$scoreboard players set $(player_selector) julliapi.raycastDistance 6
$execute as $(player_selector) at @s anchored feet facing entity $(target_selector) feet positioned ^ ^$(target_center) ^2 if entity $(target_selector) run function julliot:player/raycast/default/vec2 with storage julliapi:player looking.$(temp)

$scoreboard players set $(player_selector) julliapi.raycastDistance $(ray_length)
$execute as $(player_selector) at @s anchored feet facing entity $(target_selector) feet positioned ^ ^$(target_center) ^2 positioned ~ ~-$(target_center) ~ rotated as @s positioned ^ ^ ^-2 if entity $(target_selector) run function julliot:player/raycast/default/vec3 with storage julliapi:player looking.$(temp)

scoreboard players reset @s julliapi.raycastDistance