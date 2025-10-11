particle dust{color:[1.000,0.000,0.000],scale:0.4} ~ ~ ~ 0 0 0 0 0 normal

#$execute as $(target_selector) if entity @s[tag=ray.target,dx=0] run return run scoreboard players set $(player_selector) julliapi.raycastHit 1

scoreboard players remove @s julliapi.raycastDistance 1

$execute if score @s julliapi.raycastDistance matches 1.. positioned ^$(localX) ^$(localY) ^.25 run return run function julliot:player/raycast/default/vec1 with storage julliapi:player looking.$(temp)

#scoreboard players set @s julliapi.raycastHit 0