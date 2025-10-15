# at 3 block distance from target:
# precision_medium = 1.;
# precision_corner = 1.;
# precision_center = 1.89
# at 20 block distance from target:
# precision_medium = 
# precision_corner = .725
# precision_center =

execute unless score @s julliapi.raycastHit matches 1..3 run return 0

## center
#top
$execute facing entity $(target_selector) feet positioned ^ ^-.1 ^2 positioned ~ ~-.05 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..$(precision_center)] run return 1
#bot
$execute facing entity $(target_selector) feet positioned ^ ^.1 ^2 positioned ~ ~-.05 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..$(precision_center)] run return 1

## left
#top
$execute facing entity $(target_selector) feet positioned ^-.9 ^-2.5 ^-1 positioned ^ ^ ^2 positioned ~ ~-.05 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..$(precision_corner)] run return 1
#bot
$execute facing entity $(target_selector) feet positioned ^-.9 ^2.5 ^-.8 positioned ^ ^ ^2 positioned ~ ~-.05 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..$(precision_corner)] run return 1
#center top
$execute facing entity $(target_selector) feet positioned ^-.9 ^-1 ^-.3 positioned ^ ^ ^2 positioned ~ ~-.05 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..$(precision_medium)] run return 1
#center bot
$execute facing entity $(target_selector) feet positioned ^-.9 ^1 ^-.3 positioned ^ ^ ^2 positioned ~ ~-.05 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..$(precision_medium)] run return 1

## right
#top
$execute facing entity $(target_selector) feet positioned ^.9 ^-2.5 ^-1 positioned ^ ^ ^2 positioned ~ ~-.05 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..$(precision_corner)] run return 1
#bot
$execute facing entity $(target_selector) feet positioned ^.9 ^2.5 ^-.8 positioned ^ ^ ^2 positioned ~ ~-.05 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..$(precision_corner)] run return 1
#center top
$execute facing entity $(target_selector) feet positioned ^.9 ^-1 ^-.3 positioned ^ ^ ^2 positioned ~ ~-.05 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..$(precision_medium)] run return 1
#center bot
$execute facing entity $(target_selector) feet positioned ^.9 ^1 ^-.3 positioned ^ ^ ^2 positioned ~ ~-.05 ~ rotated as @s positioned ^ ^ ^-2 if entity @s[distance=..$(precision_medium)] run return 1

execute run return 0