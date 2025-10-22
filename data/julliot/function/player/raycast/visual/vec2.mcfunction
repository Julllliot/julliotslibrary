particle dust{color:[0.000,0.000,1.000],scale:0.4} ~ ~ ~ 0 0 0 0 0 normal

scoreboard players remove @s julliapi.raycastDistance 1

$execute if score @s julliapi.raycastDistance matches 0.. positioned ^ ^ ^-.5 run return run function julliot:player/raycast/visual/vec2 with storage julliapi:player raycast.$(temp)

execute if entity @s[dy=0] run return run scoreboard players set @s julliapi.raycastHit 1
scoreboard players set @s julliapi.raycastHit 0