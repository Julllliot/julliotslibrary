particle dust{color:[0.000,1.000,0.000],scale:0.4} ~ ~ ~ 0 0 0 0 0 normal

scoreboard players remove @s julliapi.raycastDistance 1

$execute if score @s julliapi.raycastDistance matches 1.. positioned ~ ~-.25 ~ run return run function julliot:player/raycast/default/vec2 with storage julliapi:player looking.$(temp)