particle dust{color:[1.000,0.000,0.000],scale:0.4} ~ ~ ~ 0 0 0 0 0 normal

scoreboard players remove @s julliapi.raycastDistance 1

$execute if score @s julliapi.raycastDistance matches 0.. positioned ^ ^ ^.5 run return run function julliot:player/raycast/visual/vec with storage julliapi:player raycast.$(temp)