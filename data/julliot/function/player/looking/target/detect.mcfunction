execute unless score @s julliapi.raycastHit matches 1..3 run return 0

#center
$execute positioned ^ ^$(target_center) ^ facing entity $(target_selector) feet positioned ^ ^ ^2 positioned ~ ~-1.5 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..1] run return 1

#top
$execute positioned ^ ^$(target_center) ^ facing entity $(target_selector) feet positioned ^ ^-.75 ^2 positioned ~ ~-1.62 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..1] run return 1

#bot
$execute positioned ^ ^$(target_center) ^ facing entity $(target_selector) feet positioned ^ ^.95 ^2 positioned ~ ~-1.62 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..1] run return 1

#right
$execute positioned ^ ^$(target_center) ^ facing entity $(target_selector) feet positioned ^.8 ^ ^2 positioned ~ ~-1.5 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..1] run return 1

#left
$execute positioned ^ ^$(target_center) ^ facing entity $(target_selector) feet positioned ^-.8 ^ ^2 positioned ~ ~-1.5 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..1] run return 1

#top left
$execute facing entity $(target_selector) feet positioned ^-1.4 ^-1.5 ^2 positioned ~ ~-1.62 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..1] run return 1

#top right
$execute facing entity $(target_selector) feet positioned ^1.4 ^-1.5 ^2 positioned ~ ~-1.62 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..1] run return 1

#bot left
$execute positioned ^ ^$(target_center) ^ facing entity $(target_selector) feet positioned ^-1.4 ^1.5 ^2 positioned ~ ~-1.62 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..1.2] run return 1

#bot right
$execute positioned ^ ^$(target_center) ^ facing entity $(target_selector) feet positioned ^1.4 ^1.5 ^2 positioned ~ ~-1.62 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..1.2] run return 1

execute run return 0