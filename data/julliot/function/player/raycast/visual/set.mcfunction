# Arguments

# execute this as @a[limit=1] at @s anchored eyes positioned ^ ^ ^
# Macros: max_distance
# the target entity MUST have "ray.target" tag

$execute unless entity $(target_selector) run return fail

$scoreboard players set $(player_selector) julliapi.raycastDistance $(ray_length)

$execute facing entity $(target_selector) feet rotated ~$(yaw) ~$(pitch) run function julliot:player/raycast/visual/vec with storage julliapi:player raycast.$(temp)

$scoreboard players set $(player_selector) julliapi.raycastDistance $(ray_length)

$execute facing entity $(target_selector) feet rotated ~$(yaw) ~$(pitch) positioned ^ ^ ^1 rotated as @s run function julliot:player/raycast/visual/vec2 with storage julliapi:player raycast.$(temp)

scoreboard players reset @s julliapi.raycastDistance