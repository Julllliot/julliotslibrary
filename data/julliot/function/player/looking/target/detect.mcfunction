execute unless score @s julliapi.raycastHit matches 1..3 run return 0

#center
$execute anchored feet facing entity $(target_selector) feet positioned ^ ^$(target_center) ^2 positioned ~ ~-$(target_center) ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..1] run return 1

# #right
# $execute anchored feet facing entity $(target_selector) feet positioned ^$(localX) ^$(target_center) ^$(localZ) positioned ~ ~-$(target_center) ~ rotated as @s positioned ^ ^ ^-$(localZ) if entity @s[distance=..$(radius)] run return 1

# #left
# $execute anchored feet facing entity $(target_selector) feet positioned ^-$(localX) ^$(target_center) ^$(localZ) positioned ~ ~-$(target_center) ~ rotated as @s positioned ^ ^ ^-$(localZ) if entity @s[distance=..$(radius)] run return 1

# #top
# $execute facing entity $(target_selector) feet positioned ^ ^-.1 ^$(localZ) positioned ~ ~-1.62 ~ rotated as @s positioned ^ ^ ^-$(localZ) if entity @s[distance=..1] run return 1

# #top left
# $execute facing entity $(target_selector) feet positioned ^-1 ^-1.6 ^$(localZ) positioned ~ ~-1.62 ~ rotated as @s positioned ^ ^ ^-$(localZ) if entity @s[distance=..$(radius)] run return 1

# #top right
# $execute facing entity $(target_selector) feet positioned ^1 ^-1.6 ^$(localZ) positioned ~ ~-1.62 ~ rotated as @s positioned ^ ^ ^-$(localZ) if entity @s[distance=..$(radius)] run return 1

# #bot
# $execute facing entity $(target_selector) eyes positioned ^ ^.4 ^$(localZ) positioned ~ ~-1.62 ~ rotated as @s positioned ^ ^ ^-$(localZ) if entity @s[distance=..1] run return 1

# #bot left
# $execute facing entity $(target_selector) eyes positioned ^-1 ^1.6 ^$(localZ) positioned ~ ~-1.62 ~ rotated as @s positioned ^ ^ ^-$(localZ) if entity @s[distance=..$(radius)] run return 1

# #bot right
# $execute facing entity $(target_selector) eyes positioned ^1 ^1.6 ^$(localZ) positioned ~ ~-1.62 ~ rotated as @s positioned ^ ^ ^-$(localZ) if entity @s[distance=..$(radius)] run return 1

execute run return 0